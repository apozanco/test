import os
import signal
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


domains = ['grid']
objectives = ['scfl']
problems_solved = []
ks = [10,100,1000,10000]
for domain in domains:
    for objective in objectives:
        for k in ks:
            for task in os.listdir(f'cost_function_learning_tasks/{domain}'):
                if task not in problems_solved:
                    print(f'Solving {task} with k={k}')
                    try:
                        # 4000 so it comprises 1800 for the main algorithm and 2200 to validate the output
                        with time_limit(4600):
                            run_lacfip('benchmark/grid/domain.pddl',
                                       f'cost_function_learning_tasks/{domain}/{task}',
                                       objective,
                                       k)
                            """run_baseline('benchmark/grid/domain.pddl',
                                       f'cost_function_learning_tasks/{domain}/{task}',
                                       objective,
                                       {}
                                       )"""
                    except TimeoutException as e:
                        print("LACFIP + VALIDATION Timed out!")
