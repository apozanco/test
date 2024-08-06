import os
import random

nodes = 10
size = 1000
degree = 3
mindistance = 100
trucks = 2
packages = 3

num_problems = 50

for x in range(num_problems):
    cmd = f'python3 ../../pddl-generators/transport/city-generator.py {nodes} {size} {degree} {mindistance} {trucks} {packages} {random.randint(0,100)} > p_{x}.pddl'
    os.system(cmd)
