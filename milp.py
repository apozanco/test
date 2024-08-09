import ast
from time import time

from pulp import *

def run_milp(log, grounded_actions, input_plans_and_alternatives, task, approximate_cost_function):
    M = 100000
    input_plans = list(input_plans_and_alternatives.keys())
    input_plans_and_alternatives_list = []
    for input_plan, alternatives in input_plans_and_alternatives.items():
        for alternative in alternatives:
            input_plans_and_alternatives_list.append(str([input_plan, alternative]))

    first_iteration_init_T = time()
    prob = LpProblem("Learning Action Costs", LpMaximize)
    # Decision variables
    # TODO: potentially assign an upperbound to the cost
    x = LpVariable.dicts("optimality", input_plans, cat=LpBinary)
    y = LpVariable.dict("cost", grounded_actions, lowBound=1, cat=LpInteger)
    z = LpVariable.dicts("aoptimality", input_plans_and_alternatives_list, cat=LpBinary)

    actions_name_mapping = {}
    for action in grounded_actions:
        new_name = f'cost_{action.replace("-","_").replace(" ","_")}'
        actions_name_mapping[new_name] = action

    # Objective function in the first run
    prob += lpSum([x[plan] for plan in input_plans])

    # Constraints
    if not 's' in task:
        for plan in input_plans:
            for alternative_plan in input_plans_and_alternatives[plan]:
                prob += lpSum([y[action] for action in ast.literal_eval(plan)]) <= lpSum([y[action] for action in alternative_plan]) + M*(1-z[str([plan,alternative_plan])])
    else: # Strict case
        for plan in input_plans:
            for alternative_plan in input_plans_and_alternatives[plan]:
                prob += lpSum([y[action] for action in ast.literal_eval(plan)]) + 1 <= lpSum([y[action] for action in alternative_plan]) + M*(1-z[str([plan,alternative_plan])])

    for plan in input_plans:
        prob += len(input_plans_and_alternatives[plan]) - lpSum([z[str([plan,alternative_plan])] for alternative_plan in input_plans_and_alternatives[plan]]) <= M*(1-x[plan])

    # Solve the problem
    try:
        prob.solve(PULP_CBC_CMD(timeLimit=1800,msg=False))
    except:
        log.info('The first MILP failed for some reason')

    first_iteration_end_T = time()
    log.info(f'First solution computed in: {first_iteration_end_T - first_iteration_init_T}')

    # Print solution
    first_cost_function = {}
    optimal_plans = 0
    if LpStatus[prob.status] == 'Optimal':
        optimal_plans = prob.objective.value()
        log.info(f'Plans made optimal: {optimal_plans}')
        for v in prob.variables():
            if 'cost' in v.name:
                first_cost_function[actions_name_mapping[v.name]] = v.varValue
    else:
        log.info('No solution could be found')

    # SECOND ITERATION OF THE MILP

    log.info('Running the second iteration of the MILP')
    if task == 'cfl' or task == 'scfl':
        prob += prob.objective - 10000000*lpSum([y[action] for action in grounded_actions])
    else:
        slack = LpVariable.dicts("slack", grounded_actions, lowBound=0, cat=LpInteger)
        prob += prob.objective - 10000000 * lpSum([slack[action] for action in grounded_actions])
        for action in grounded_actions:
            prob += approximate_cost_function[action] - y[action] <= slack[action]
            prob += y[action] - approximate_cost_function[action] <= slack[action]

    # We add the constraint for the
    prob += lpSum([x[plan] for plan in input_plans]) == optimal_plans

    # Solve the problem
    cost_function = {}
    try:
        prob.solve(PULP_CBC_CMD(timeLimit=1800,msg=False))
    except:
        log.info('The second MILP failed for some reason')
    if LpStatus[prob.status] == 'Optimal':
        optimal_plans = prob.objective.value()
        log.info(f'Plans made optimal: {optimal_plans}')
        for v in prob.variables():
            if 'cost' in v.name:
                cost_function[actions_name_mapping[v.name]] = v.varValue
    else:
        log.info('No solution could be found')

    return cost_function, first_cost_function