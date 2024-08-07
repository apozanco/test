import ast
import copy
import json
import os
from milp import run_milp
import time
import logging
import signal
from contextlib import contextmanager

class TimeoutException(Exception): pass

@contextmanager
def time_limit(seconds):
    def signal_handler(signum, frame):
        raise TimeoutException("Timed out!")
    signal.signal(signal.SIGALRM, signal_handler)
    signal.alarm(seconds)
    try:
        yield
    finally:
        signal.alarm(0)


def get_symk_plans():
    alternative_plans = []
    for file in os.listdir(os.getcwd()):
        if file.startswith('sas_plan'):
            plan = open(f'{file}','r').readlines()
            plan = plan[:-1]
            plan = [x.strip() for x in plan]
            alternative_plans.append(plan)
    return alternative_plans

def get_alternative_plans(domain_path, problem_path, input_plan, k):
    symk_cmd = f'symk/fast-downward.py --overall-time-limit=1800 {domain_path} {problem_path} --search "symk_bd(simple=true,plan_selection=unordered(num_plans={k}))"'
    os.system(symk_cmd)
    grounded_actions = open('grounded_actions.txt','r').readlines()[0].split(',')
    f = open('grounded_actions_with_cost.json')
    grounded_actions_with_cost = json.load(f)
    alternative_plans = get_symk_plans()
    plan_to_be_optimal = ast.literal_eval(input_plan)
    plan_to_be_optimal = [x.lower() for x in plan_to_be_optimal]
    if plan_to_be_optimal in alternative_plans:
        alternative_plans.remove(plan_to_be_optimal)
    return alternative_plans, grounded_actions, grounded_actions_with_cost

def get_relevant_actions(grounded_actions, input_plans_and_alternatives):
    actions_in_plans_and_alternatives = []
    for input_plan, alternatives in input_plans_and_alternatives.items():
        # Add the plans
        for action in ast.literal_eval(input_plan):
            if action not in actions_in_plans_and_alternatives:
                actions_in_plans_and_alternatives.append(action)
        # Add the alternatives
        for alternative_plan in alternatives:
            for action in alternative_plan:
                if action not in actions_in_plans_and_alternatives:
                    actions_in_plans_and_alternatives.append(action)
    relevant_actions = set(grounded_actions) & set(actions_in_plans_and_alternatives)
    return relevant_actions


def validate_results(task, cost_function, task_objective):
    plans_turned_optimal = []
    suboptimality = []
    os.system('rm sas_plan.*')
    task2 = copy.deepcopy(task)
    all_input_plans = set([str(ast.literal_eval(x[1])) for x in task2])
    for tuple in task:
        # Get MILP cost of the plan
        milp_plan = ast.literal_eval(tuple[1])
        milp_cost = 0
        # TODO: Error is here
        for action in milp_plan:
            try:
                milp_cost += cost_function[action]
            except:
                print('WARNING: Issue here')
                milp_cost += 1
        # Validate depending on the task at hand
        if task_objective == 'scfl' or task_objective == 'scflc':
            cmd = f'symk/fast-downward.py --overall-time-limit=1800 {tuple[2]} {tuple[0]} --translate-options --domain-from-c --search-options --search "symq_bd(simple=true,plan_selection=top_k(num_plans=100,dump_plans=false),quality=1)" > /dev/null'
            os.system(cmd)
            plans_aux = get_symk_plans()
            plans = set([str(x) for x in plans_aux])
            intersection = plans & all_input_plans
            if len(intersection) == len(plans):
                plans_turned_optimal.append(1)
            else:
                plans_turned_optimal.append(0)
            suboptimality.append(len(plans) - len(intersection))

        else:
            cmd = f'symk/fast-downward.py --overall-time-limit=1800 {tuple[2]} {tuple[0]} --translate-options --domain-from-c --search-options --search "sym_bd()" > validation_result.txt'
            os.system(cmd)
            infile = open('validation_result.txt','r')
            optimal_plan_cost = None
            for line in infile:
                if 'Plan cost' in line:
                    optimal_plan_cost = int(line.split(':')[-1].strip())
                    break
            same_cost = 0
            if milp_cost == optimal_plan_cost:
                same_cost = 1
            if optimal_plan_cost == None:
                suboptimality.append(0)
            else:
                suboptimality.append(milp_cost/optimal_plan_cost)
            plans_turned_optimal.append(same_cost)

    return plans_turned_optimal, suboptimality

def run_baseline(domain_path, task_path, task_objective, approximate_cost_function):
    filename = f'{task_path.replace(".json", "").replace("cost_function_learning_tasks/", "").replace("/", "_")}_{task_objective}_k=baseline.log'
    log = logging.getLogger()
    log.setLevel(logging.INFO)
    fh = logging.FileHandler(filename=filename)
    fh.setLevel(logging.INFO)
    formatter = logging.Formatter(fmt='%(message)s')
    fh.setFormatter(formatter)
    log.addHandler(fh)
    with open(task_path) as json_file:
        task = json.load(json_file)
    problems = task['T']
    plans = task['M']
    task = zip(problems, plans, domain_path)
    baseline_init_T = time.time()
    baseline_timed_out = False
    try:
        with time_limit(1800):
            log.info(f'Running baseline with k={0} on a CFL task with {len(plans)} plans, objective {task_objective}')
            grounded_actions = []
            input_plans_and_alternatives = {}
            # TODO: this could be run in parallel
            log.info('\nComputing the alternative plans..')
            for tuple in task:
                alternatives_init_T = time.time()
                problem = f'{tuple[0]}.pddl'
                plan = tuple[1]
                # TODO: at some point we should verify that all the plans share the same grounded actions
                problem_path = domain_path.replace("domain.pddl", problem)
                if plan not in input_plans_and_alternatives:
                    alternative_plans, grounded_actions, approximate_cost_function = get_alternative_plans(domain_path, problem_path, plan, 1)
                    input_plans_and_alternatives[plan] = alternative_plans
                alternatives_end_T = time.time()
                log.info(f'Alternative plans computed in {alternatives_end_T - alternatives_init_T} seconds')
                break
            log.info(f'There are {len(grounded_actions)} grounded actions')
            relevant_actions = get_relevant_actions(grounded_actions, input_plans_and_alternatives)
            log.info(f'There are {len(relevant_actions)} relevant actions\n')

            log.info(f'Generating the cost function...')
            cost_function = {action: 1 for action in grounded_actions}

            baseline_end_T = time.time()
            log.info(f'Baseline finished in {baseline_end_T - baseline_init_T} seconds\n')

    except TimeoutException as e:
        baseline_timed_out = True
        print("Baseline timed out!")

    if not baseline_timed_out:
        # Post process time to get statistics
        log.info('Validating the results and printing metrics..')
        os.system('rm C.json')
        json.dump(cost_function, open('C.json', 'w+'))
        problems = [domain_path.replace("domain", problem) for problem in problems]
        domain_paths = [domain_path for x in range(len(problems))]
        task = zip(problems, plans, domain_paths)
        plans_turned_optimal, suboptimality = validate_results(task, cost_function)
        log.info(
            f'Total plans turned optimal: {sum(plans_turned_optimal)} out of {len(problems)}, {sum(plans_turned_optimal) / len(problems)}')
        log.info(f'Plans turned optimal distribution: {plans_turned_optimal}')
        log.info(f'Avg suboptimality: {sum(suboptimality) / len(suboptimality)}')
        log.info(f'Suboptimality distribution: {suboptimality}')
        log.info(f'Cost function: {cost_function}')
    else:
        log.info('Baseline timed out!')
    log.removeHandler(fh)

def run_lacfip(domain_path, task_path, task_objective, k):
    try:
        os.system('rm grounded_*')
    except:
        pass
    try:
        os.system('rm sas_plan*')
    except:
        pass
    try:
        os.system('rm C.json')
    except:
        pass
    try:
        os.system('rm validation_result.txt')
    except:
        pass
    filename = f'{task_path.replace(".json", "").replace("cost_function_learning_tasks/","").replace("/","_")}_{task_objective}_k={k}.log'
    log = logging.getLogger()
    log.setLevel(logging.INFO)
    fh = logging.FileHandler(filename=filename)
    fh.setLevel(logging.INFO)
    formatter = logging.Formatter(fmt='%(message)s')
    fh.setFormatter(formatter)
    log.addHandler(fh)
    with open(task_path) as json_file:
        task = json.load(json_file)
    problems = task['T']
    plans = task['M']
    task = zip(problems, plans, domain_path)
    lacfipt_init_T = time.time()
    lacfip_timed_out = False
    try:
        with time_limit(3600):
            log.info(f'Running LACFIP with k={k} on a CFL task with {len(plans)} plans, objective {task_objective}')
            grounded_actions = []
            input_plans_and_alternatives = {}
            # TODO: this could be run in parallel
            log.info('\nComputing the alternative plans..')
            for tuple in task:
                alternatives_init_T = time.time()
                problem = f'{tuple[0]}.pddl'
                plan = tuple[1]
                # TODO: at some point we should verify that all the plans share the same grounded actions
                problem_path = domain_path.replace("domain.pddl",problem)
                if plan not in input_plans_and_alternatives:
                    alternative_plans, grounded_actions, approximate_cost_function = get_alternative_plans(domain_path, problem_path, plan, k)
                    input_plans_and_alternatives[plan] = alternative_plans
                alternatives_end_T = time.time()
                log.info(f'Alternative plans computed in {alternatives_end_T - alternatives_init_T} seconds')
            log.info(f'There are {len(grounded_actions)} grounded actions')
            relevant_actions = get_relevant_actions(grounded_actions, input_plans_and_alternatives)
            log.info(f'There are {len(relevant_actions)} relevant actions\n')

            log.info(f'Running the MILP...')
            milp_init_T = time.time()
            cost_function, first_cost_function = run_milp(log, relevant_actions, input_plans_and_alternatives, task=task_objective, approximate_cost_function=approximate_cost_function)
            non_relevant_actions = set(grounded_actions) - set(relevant_actions)
            if task_objective == 'cfl' or task_objective == 'scfl':
                for action in non_relevant_actions:
                    cost_function[action] = 1
                    first_cost_function[action] = 1
            else:
                for action in non_relevant_actions:
                    cost_function[action] = approximate_cost_function[action]
                    first_cost_function[action] = approximate_cost_function[action]
            milp_end_T = time.time()
            log.info(f'MILPs solved in {milp_end_T - milp_init_T} seconds\n')

            lacfip_end_T = time.time()
            log.info(f'LACFIP finished in {lacfip_end_T - lacfipt_init_T} seconds\n')

    except TimeoutException as e:
        lacfip_timed_out = True
        print("LACFIP timed out!")

    if not lacfip_timed_out:
        # Post process time to get statistics
        log.info('Validating the results and printing metrics..')
        os.system('rm C.json')
        json.dump(cost_function, open('C.json', 'w+'))
        problems = [domain_path.replace("domain",problem) for problem in problems]
        domain_paths = [domain_path for x in range(len(problems))]
        task = zip(problems, plans, domain_paths)
        plans_turned_optimal, suboptimality = validate_results(task, cost_function, task_objective)
        log.info(
            f'Total plans turned optimal: {sum(plans_turned_optimal)} out of {len(problems)}, {sum(plans_turned_optimal) / len(problems)}')
        log.info(f'Plans turned optimal distribution: {plans_turned_optimal}')
        log.info(f'Avg suboptimality: {sum(suboptimality) / len(suboptimality)}')
        log.info(f'Suboptimality distribution: {suboptimality}')
        log.info(f'Cost function: {cost_function}')
        log.info(f'First Cost function: {first_cost_function}')
    else:
        log.info('LACFIP timed out!')
    log.removeHandler(fh)


def main():
    task_path = 'cost_function_learning_tasks/grid/10_10_0.json'
    task_objective = 'cfl'
    approximate_cost_function = {}
    with open(task_path) as json_file:
        task = json.load(json_file)
    # TODO: include the domain in the task
    problems = task['T']
    plans = task['M']
    domain_path = 'benchmark/grid/domain.pddl'
    task = zip(problems,plans,domain_path)
    k = 100
    lacfipt_init_T = time.time()
    print(f'Running LACFIP with k={k} on a CFL task with {len(plans)} plans')
    grounded_actions = []
    input_plans_and_alternatives = {}
    # TODO: this could be run in parallel
    print('\nComputing the alternative plans..')
    for tuple in task:
        alternatives_init_T = time.time()
        problem = f'{tuple[0]}.pddl'
        plan = tuple[1]
        # TODO: at some point we should verify that all the plans share the same grounded actions
        problem_path = f'benchmark/grid/{problem}'
        if plan not in input_plans_and_alternatives:
            alternative_plans, grounded_actions = get_alternative_plans(domain_path, problem_path, plan, k)
            input_plans_and_alternatives[plan] = alternative_plans
        alternatives_end_T = time.time()
        print(f'Alternative plans computed in {alternatives_end_T - alternatives_init_T} seconds')
    print(f'There are {len(grounded_actions)} grounded actions')
    relevant_actions = get_relevant_actions(grounded_actions, input_plans_and_alternatives)
    print(f'There are {len(relevant_actions)} relevant actions\n')

    print(f'Running the MILP...')
    milp_init_T = time.time()
    # todo: ADD RELEVANT ACTIONS HERE
    cost_function = run_milp(relevant_actions, input_plans_and_alternatives, task=task_objective)
    non_relevant_actions = set(grounded_actions) - set(relevant_actions)
    if task_objective == 'cfl' or task_objective == 'scfl':
        for action in non_relevant_actions:
            cost_function[action] = 1
    else:
        # TODO: here the cost function
        print()
    milp_end_T = time.time()
    print(f'MILPs solved in {milp_end_T - milp_init_T} seconds\n')

    lacfip_end_T = time.time()
    print(f'LACFIP finished in {lacfip_end_T - lacfipt_init_T} seconds\n')


    # Post process time to get statistics
    # TODO: generate a domain with the returned cost function and solve the given problem with that model to verify
    #  the optimality of the plans
    print('Validating the results and printing metrics..')
    os.system('rm C.json')
    json.dump(cost_function, open('C.json','w+'))
    problems = [f'benchmark/grid/{problem}.pddl' for problem in problems]
    domain_paths = [domain_path for x in range(len(problems))]
    task = zip(problems, plans, domain_paths)
    plans_turned_optimal, suboptimality = validate_results(task, cost_function)
    print(f'Total plans turned optimal: {sum(plans_turned_optimal)} out of {len(problems)}, {sum(plans_turned_optimal)/len(problems)}')
    print(f'Plans turned optimal distribution: {plans_turned_optimal}')
    print(f'Avg suboptimality: {sum(suboptimality)/len(suboptimality)}')
    print(f'Suboptimality distribution: {suboptimality}')
    print(f'Cost function: {cost_function}')

if __name__ == '__main__':
    main()