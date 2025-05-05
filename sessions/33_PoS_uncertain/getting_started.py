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
    return (irregular,)


@app.cell
def _(irregular, plt):
    plt.hist(irregular, bins=31, range=(0,30))[2]
    return


if __name__ == "__main__":
    app.run()
