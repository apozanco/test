import os

benchmarks_path = 'benchmark'
domains = ['transport']
k=100

os.system('rm sas_plan*')

for domain in domains:
    for problem in os.listdir(f'{benchmarks_path}/{domain}'):
        if '.pddl' in problem and not 'domain' in problem:# and 'p_6_' in problem:
            print(f'Generating the plans for problem {problem}')
            cmd = f'symk/fast-downward.py --overall-time-limit=200 "{benchmarks_path}/{domain}/domain.pddl" "{benchmarks_path}/{domain}/{problem}" --search "symk_bd(simple=true,plan_selection=unordered(num_plans={k}))" > /dev/null'
            os.system(cmd)
            # Get plans
            plans = []
            for file in os.listdir(os.getcwd()):
                if 'sas_plan' in file:
                    infile = open(file, 'r')
                    plan = infile.readlines()[:-1]
                    plan = [x.strip() for x in plan]
                    plans.append(str(plan))
            os.system('rm sas_plan*')
            # Write plans
            plans_file_name = problem.replace('.pddl','') + '.plans'
            outfile = open(f'{benchmarks_path}/{domain}/{plans_file_name}','w+')
            str_to_write = '\n'.join(plans)
            outfile.write(str_to_write)
            outfile.close()
