import marimo

__generated_with = "0.13.16-dev109"
app = marimo.App()


@app.cell
def _():
    import marimo as mo
    return (mo,)


@app.cell
def _():
    import numpy as np
    import matplotlib.pyplot as plt
    import scipy
    import math
    return math, np, plt, scipy


@app.cell
def _(np, nsamples):
    draws = np.random.normal(0, 1, (nsamples.value,10))
    return (draws,)


@app.cell
def _(draws):
    means = draws.mean(axis=1)
    return (means,)


@app.cell
def _(draws, math, means, np, scipy):
    scalar = scipy.stats.t.ppf(.975, 10-1)
    std = draws.std(axis=1, ddof=1)
    sem = std/math.sqrt(10)
    xerr = sem * scalar
    colors = ['b' if x else 'r' for x in np.abs(means) < xerr]
    return colors, xerr


@app.cell
def _(colors, means, np, plt, scipy, xerr):
    fig, ax = plt.subplots(2,1,sharex=True,height_ratios=(1,3.5),squeeze=True)

    val_range = np.linspace(scipy.stats.norm.ppf(0.01), scipy.stats.norm.ppf(0.99),100)
    ax[0].plot(val_range,scipy.stats.norm.pdf(val_range))
    ax[0].set_xticks(ticks = [-1,0,1], labels = ["-σ","μ","σ"])

    for i in range(len(means)):
        ax[1].errorbar(means[i], i, xerr=xerr[i], yerr=0, fmt="o", c=colors[i], capsize=5)

    for i in range(2):
        ax[i].axvline(x = 0.0,c ="grey",ls ="--")
        ax[i].axvline(x = -1.0,c ="grey",ls ="dotted")
        ax[i].axvline(x = 1.0,c ="grey",ls ="dotted")
    plt.subplots_adjust(wspace = 0, hspace = 0.06)

    plt.show()
    return


@app.cell
def _(mo):
    nsamples = mo.ui.slider(1, 100, value=20, label=f"number of samples: ", debounce=True, show_value=True)
    nsamples
    return (nsamples,)


if __name__ == "__main__":
    app.run()
