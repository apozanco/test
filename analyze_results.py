import math
import ast
import pandas as pd
import os
import matplotlib.pyplot as plt
import seaborn as sns
import statistics

def generate_ratio_violinplot(df):
    problems = list(df['full_problem'].unique())
    problems_solved = []
    for problem in problems:
        this_problems = df[(df['full_problem'] == problem) & (df['k'] != 'baseline')]
        ratios = this_problems['ratio_of_plans_turned_optimal'].tolist()
        if not 0 in ratios:
            problems_solved.append(problem)
    fig, ax = plt.subplots()
    new_df = df[df['full_problem'].isin(problems_solved)]
    """sns.violinplot(data=[df_k_10_ratio,
                         df_k_100_ratio],cut=0, inner=None,palette="Blues")"""
    sns.violinplot(data=new_df,x='k',y='ratio_of_plans_turned_optimal', order=['baseline', 10, 100, 1000], cut=0, inner=None,palette="Blues")

    baseline = statistics.mean(new_df[new_df['k']=='baseline']['ratio_of_plans_turned_optimal'])
    k10 = statistics.mean(new_df[new_df['k']==10]['ratio_of_plans_turned_optimal'])
    k100 = statistics.mean(new_df[new_df['k']==100]['ratio_of_plans_turned_optimal'])
    k1000 = statistics.mean(new_df[new_df['k']==1000]['ratio_of_plans_turned_optimal'])

    plt.scatter(x=0, y=baseline, c="k")
    plt.scatter(x=1, y=k10, c="k")
    plt.scatter(x=2, y=k100, c="k")
    plt.scatter(x=3, y=k1000, c="k")

    """diff_cost_vs_standard_overhead_avg = statistics.mean(overhead_vs_standard['diff_cost'])
    cost_diff_vs_standard_overhead_avg = statistics.mean(overhead_vs_standard['cost_diff'])
    delta_cost_vs_standard_overhead_avg = statistics.mean(overhead_vs_standard['delta_cost'])
    cost_delta_vs_standard_overhead_avg = statistics.mean(overhead_vs_standard['cost_delta'])
    range_cost_vs_standard_overhead_avg = statistics.mean(overhead_vs_standard['range_cost'])
    cost_range_vs_standard_overhead_avg = statistics.mean(overhead_vs_standard['cost_range'])
    all_optimal_vs_standard_overhead_avg = statistics.mean(overhead_vs_standard['all_optimal'])


    plt.scatter(x=0, y=diff_cost_vs_standard_overhead_avg, c="k")
    plt.scatter(x=1, y=cost_diff_vs_standard_overhead_avg, c="k")
    plt.scatter(x=2, y=delta_cost_vs_standard_overhead_avg, c="k")
    plt.scatter(x=3, y=cost_delta_vs_standard_overhead_avg, c="k")
    plt.scatter(x=4, y=range_cost_vs_standard_overhead_avg, c="k")
    plt.scatter(x=5, y=cost_range_vs_standard_overhead_avg, c="k")
    plt.scatter(x=6, y=all_optimal_vs_standard_overhead_avg, c="k")"""

    #ax.text((-0.03), (220), str(round(all_optimal_vs_standard_overhead_avg, 1)), fontsize=10)

    # adding horizontal grid lines
    ax.yaxis.grid(True)
    """ax.set_xticks([y for y in range(4)],
                      labels=[
                          'baseline',
                          '$k=10$',
                          '$k=100$',
                          '$k=1000$',
                      ])"""

    plt.xticks(fontsize=20)
    plt.yticks(fontsize=16)
    plt.ylabel('Ratio of Plans Turned Optimal',fontsize=16)
    #plt.tight_layout()
    #plt.gca().set_aspect(0.003)
    #plt.show()
    plt.savefig('k_preliminary.pdf',format='pdf')

def get_results_dict():
    results = []
    for file in os.listdir(os.getcwd()):
        if file.endswith('.log') and 'grid_10_' in file and not 'infinity' in file:
            infile = open(file, 'r')
            result = {
                'domain': file.split('_')[0],
                'full_problem': file.split('k')[0],
                'cfl_problem': file.split('_')[3],
                'k': int(file.split('=')[1].replace('.log','')) if not 'baseline' in file else 'baseline',
                'problem_size': int(file.split('_')[1]),
                'cfl_size': int(file.split('_')[2]),
                'objective': file.split('_')[4],
                'alternative_plans_time': 0,
                'milp_time': 0,
                'total_time': 0,
                'grounded_actions': 0,
                'relevant_actions': 0,
                'ratio_of_plans_turned_optimal': 0,
                'suboptimality_distribution': 0,
                'suboptimality_avg': 0
            }
            alternative_plans_time = []
            for line in infile:
                if 'Alternative plans computed in' in line:
                    alternative_plans_time.append(float(line.split(' ')[4]))
                elif 'grounded actions' in line:
                    result['grounded_actions'] = int(line.split(' ')[2])
                elif 'relevant actions' in line:
                    result['relevant_actions'] = int(line.split(' ')[2])
                elif 'MILPs solved in' in line:
                    result['milp_time'] = float(line.split(' ')[3])
                elif 'Total plans turned optimal' in line:
                    result['ratio_of_plans_turned_optimal'] = float(line.split(', ')[-1].strip())
                elif 'Suboptimality distribution' in line:
                    result['suboptimality_distribution'] = ast.literal_eval(line.split(': ')[-1].strip())
            result['alternative_plans_time'] = max(alternative_plans_time)
            result['total_time'] = result['alternative_plans_time'] + result['milp_time']
            try:
                result['suboptimality_avg'] = statistics.mean(result['suboptimality_distribution'])
            except:
                pass
            results.append(result)
    df = pd.DataFrame(results)
    return df

def time_split_analysis(df):
    ks = [10, 100, 1000]
    cfl_sizes = [10, 100]
    for k in ks:
        for cfl_size in cfl_sizes:
            this_df = df[(df['k']==k) & (df['cfl_size']==cfl_size)]
            alternative_plans_time = this_df['alternative_plans_time'].tolist()
            milp_time = this_df['milp_time'].tolist()
            milp_overhead = [x/y for x,y in zip(milp_time,alternative_plans_time)]
            print(f'K={k}, CFL={cfl_size}: MILP overhead avg{statistics.mean(milp_overhead)} std{statistics.stdev(milp_overhead)} max{max(milp_overhead)} min{min(milp_overhead)}')


if __name__ == '__main__':
    df = get_results_dict()
    # Time split
    time_split_analysis(df)
    # Ratio of optimal plans as k increases
    generate_ratio_violinplot(df)

