import os
import random


num_cocktails = 3
num_ingredients = 3
num_shots = 4
num_problems = 50

for x in range(num_problems):
    cmd = f'python3 ../../pddl-generators/barman/barman-generator.py {num_cocktails} {num_ingredients} {num_shots} {random.randint(1,1000)} > p_{x}.pddl'
    os.system(cmd)
