import marimo

__generated_with = "0.13.5-dev6"
app = marimo.App()


@app.cell
def _():
    import marimo as mo
    return


@app.cell
def _():
    import pandas as pd
    import numpy as np
    import matplotlib.pyplot as plt
    return np, pd, plt


@app.cell
def _(pd):
    data = pd.read_csv("https://raw.githubusercontent.com/ddojo/ddojo.github.io/refs/heads/main/sessions/33_PoS_uncertain/fig3.tsv", sep="\t")
    return (data,)


@app.cell
def _(data):
    data.plot("Bins")
    return


@app.cell
def _(data, np):
    skewed = np.repeat(data.Bins, data.Skewed).to_numpy()
    uniform = np.repeat(data.Bins, data.Uniform).to_numpy()
    normal = np.repeat(data.Bins, data.Normal).to_numpy()
    irregular = np.repeat(data.Bins, data.Irregular).to_numpy()
    return irregular, normal, skewed, uniform


@app.cell
def _(irregular, plt):
    plt.hist(irregular, bins=31, range=(0,30))[2]
    return


@app.cell
def _(irregular):
    from random import sample
    from itertools import combinations
    from statistics import mean

    means = []
    # for i in combinations(irregular, 5):
        # means.append(mean(i))
    for i in range(0, 500):
        s = sample(irregular.tolist(), 5)
        means.append(mean(s))
    print(means)
    return mean, means, sample


@app.cell
def _(mean, means, plt):
    from statistics import stdev

    plt.hist(means)[2]
    plt.ylabel('frequency')
    plt.xlabel('means of samples')

    meanofmeans = mean(means)
    plt.vlines(meanofmeans, 0, 150, colors='red', label='mean')

    sd = stdev(means)
    plt.vlines([meanofmeans-sd, meanofmeans+sd], 0, 150, colors='red', linestyles='--', label='sd')

    plt.legend()
    return (stdev,)


@app.cell
def _(mean, plt, sample, stdev):
    def plot_sample_distribution(X, label):
        means = []
        for i in range(0, 500):
            s = sample(X.tolist(), 5)
            means.append(mean(s))

        plt.hist(means)[2]
        plt.ylabel('frequency')
        plt.xlabel('means of samples')
        plt.title(label)

        meanofmeans = mean(means)
        plt.vlines(meanofmeans, 0, 170, colors='red', label='mean')

        sd = stdev(means)
        plt.vlines([meanofmeans-sd, meanofmeans+sd], 0, 170, colors='red', linestyles='--', label='sd')

        plt.legend()
        plt.show()
    return (plot_sample_distribution,)


@app.cell
def _(irregular, normal, plot_sample_distribution, skewed, uniform):
    for d, l in zip([irregular, skewed, uniform, normal], ['irregular', 'skewed', 'uniform', 'normal']):
        plot_sample_distribution(d, l)
    return


if __name__ == "__main__":
    app.run()
