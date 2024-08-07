import os
import signal
import sys
from contextlib import contextmanager
from main import run_lacfip, run_baseline

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

os.system('symk/build.py')

domain = sys.argv[1]
objective = sys.argv[2]
k = sys.argv[3]

for task in os.listdir(f'cost_function_learning_tasks/{domain}'):
    print(f'Solving {task} with k={k}')
    try:
        # 4600 = 3600 for alternatives and MILP + 1400 for validation
        with time_limit(5000):
            if k != 'baseline':
                run_lacfip(f'benchmark/{domain}/domain.pddl',
                           f'cost_function_learning_tasks/{domain}/{task}',
                           objective,
                           k)
            else:
                run_baseline(f'benchmark/{domain}/domain.pddl',
                             f'cost_function_learning_tasks/{domain}/{task}',
                             objective, {})
    except TimeoutException as e:
        print("LACFIP + VALIDATION Timed out!")