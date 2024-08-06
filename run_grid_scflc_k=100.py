import os
import signal
from contextlib import contextmanager
from main import run_lacfip

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

domain = 'grid'
objective = 'scflc'
k = 100

for task in os.listdir(f'cost_function_learning_tasks/{domain}'):
    print(f'Solving {task} with k={k}')
    try:
        # 4600 = 3600 for alternatives and MILP + 1400 for validation
        with time_limit(5000):
            run_lacfip('benchmark/grid/domain.pddl',
                       f'cost_function_learning_tasks/{domain}/{task}',
                       objective,
                       k)
    except TimeoutException as e:
        print("LACFIP + VALIDATION Timed out!")