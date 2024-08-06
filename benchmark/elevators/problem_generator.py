import os
import random

floors = 6
floors_size = 2
passengers = 4
fast_elevators = 1
slow_elevators = 1
num_problems = 50

for x in range(num_problems):
    cmd = f'python3 ../../pddl-generators/elevators/generate.py --seed {random.randint(0,1000)} {floors} {floors_size} {passengers} {fast_elevators} {slow_elevators} > p_{x}.pddl'
    os.system(cmd)
