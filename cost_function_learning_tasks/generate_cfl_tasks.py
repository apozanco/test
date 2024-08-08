import os
import random
import numpy as np
import json
import math

benchmark_path = '../benchmark'
domain = 'transport'
M_sizes = [10, 100, 1000]
tasks_in_each_bucket = 10

tasks = os.listdir(f'{benchmark_path}/{domain}')
tasks = [x.replace('.pddl', '') for x in tasks if 'pddl' in x and not 'domain' in x]
random.shuffle(tasks)
for M_size in M_sizes:
    for _ in range(tasks_in_each_bucket):
        cfl_task = {
            'T': [],
            'M': []
        }
        while len(cfl_task['T']) < M_size:
            # Number of tasks that will go into the cfl task
            num_tasks = random.randint(1,len(tasks))
            #plans_split = np.random.dirichlet(np.ones(num_tasks),size=1).tolist()[0]
            plans_split = np.random.multinomial(M_size, np.ones(num_tasks)/num_tasks)
            #plans_split = [math.ceil(x*M_size) for x in plans_split]
            diff = abs(sum(plans_split) - M_size)
            plans_split[-1] += diff

            for index, num_plans in enumerate(plans_split):
                if num_plans > 0:
                    all_plans = open(f'{benchmark_path}/{domain}/{tasks[index]}.plans','r').readlines()
                    if all_plans == []:
                        continue
                    if len(all_plans) < num_plans:
                        this_plans = all_plans
                    else:
                        this_plans = random.sample(all_plans,num_plans)
                    for p in this_plans:
                        cfl_task['T'].append(tasks[index])
                        cfl_task['M'].append(p)
        # Write the cfl task
        with open(f'{domain}/{M_size}_{_}.json', 'w+') as fp:
            json.dump(cfl_task, fp)


