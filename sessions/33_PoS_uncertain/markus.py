import marimo

__generated_with = "0.13.5-dev6"
app = marimo.App()


@app.cell
def _():
    import marimo as mo
    return (mo,)


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
def _(data, np):
    skewed = np.repeat(data.Bins, data.Skewed).to_numpy()
    uniform = np.repeat(data.Bins, data.Uniform).to_numpy()
    normal = np.repeat(data.Bins, data.Normal).to_numpy()
    irregular = np.repeat(data.Bins, data.Irregular).to_numpy()
    return (irregular,)


@app.cell(hide_code=True)
def _(irregular, plt):
    plt.hist(irregular, bins=31, range=(0,30))[2]
    plt.axvline(irregular.mean(), color="orange")
    plt.axvspan(irregular.mean()-irregular.std(), irregular.mean()+irregular.std(), color="orange", alpha=0.5)
    return


@app.cell(hide_code=True)
def _(mo):
    n = mo.ui.slider(start=1, stop=100, step=1, label="n", value=5)
    n
    return (n,)


@app.cell(hide_code=True)
def _(irregular, n, np, plt):
    samples = np.random.choice(irregular, [50000,n.value])
    sample_means = samples.mean(axis=1)
    mean_mean = sample_means.mean()
    se = sample_means.std()
    plt.hist(sample_means, bins=31)[2]
    plt.xlim((0,30))
    plt.title(f"n = {n.value}")
    plt.axvline(mean_mean, color="orange")
    plt.axvspan(mean_mean-se, mean_mean+se, alpha=0.5, color='orange')
    return


@app.cell
def _():
    return


if __name__ == "__main__":
    app.run()
