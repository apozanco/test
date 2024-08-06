import random

number_of_congestion_levels = 1
grid_x_size = 10
grid_y_size = 10
number_of_problems = 50

for problem_id in range(number_of_problems):
    problem_file = open(f'p_{grid_x_size}_{problem_id}.pddl','w+')
    problem_file.write(f'(define (problem {problem_id})\n')
    problem_file.write(f'(:domain navigation)\n')

    #Objects
    problem_file.write('(:objects\n')
    cells = [f'c{x}_{y}' for x in range(grid_x_size) for y in range(grid_y_size)]
    problem_file.write(' '.join(cells))
    problem_file.write(' - cell\n')
    problem_file.write('car1 - car\n')
    problem_file.write(')\n')

    #Initial State
    used_costs = []
    problem_file.write('(:init\n')
    car_x_position = random.randint(0,grid_x_size-1)
    car_y_position = random.randint(0,grid_y_size-1)
    problem_file.write(f'(at car1 c{car_x_position}_{car_y_position})\n')
    for x in range(grid_x_size):
        for y in range(grid_y_size):
            #rd = random.randint(0,number_of_congestion_levels)
            rd = 1
            problem_file.write(f'( = (congestion c{x}_{y}) {rd})\n')
            problem_file.write(f'(connected c{x}_{y} c{x+1}_{y})\n')
            problem_file.write(f'(connected c{x+1}_{y} c{x}_{y})\n')
            problem_file.write(f'(connected c{x}_{y} c{x}_{y+1})\n')
            problem_file.write(f'(connected c{x}_{y+1} c{x}_{y})\n')
    problem_file.write(')\n')

    #Goal State
    problem_file.write('(:goal\n')
    car_x_goal_position = random.randint(0, grid_x_size-1)
    car_y_goal_position = random.randint(0, grid_y_size-1)
    valid = False if (car_x_goal_position == car_x_position and car_y_goal_position == car_y_position) else True
    while not valid:
        car_x_goal_position = random.randint(0, grid_x_size - 1)
        car_y_goal_position = random.randint(0, grid_y_size - 1)
        valid = False if (car_x_goal_position == car_x_position and car_y_goal_position == car_y_position) else True

    problem_file.write(f'(at car1 c{car_x_goal_position}_{car_y_goal_position})\n')
    problem_file.write(')\n')
    problem_file.write('(:metric minimize (total-cost))\n)')
    problem_file.close()



