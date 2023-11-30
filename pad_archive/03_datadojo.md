# Data Dojo Würzburg 3

## August 2021
 - **When:** August 12<sup>th</sup>, 2021 at 6:00pm
 - **Where:** Zoom
 - **Zoom:**
    - Link: https://uni-wuerzburg.zoom.us/j/93508934856?pwd=ZnlqalRSc3d1S3hZbjJmWEdTbmNvdz09
    - Meeting ID: 935 0893 4856
    - Password: 890042
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

Token: ftrBCaE4EMXu9ac4

## Participants
> Please add your name to the list (click the pen icon at the top left to edit) if you plan to come. And please remove it if you can not make it.
 - Markus (R/tidyverse)
 - Laura (R/Python (pandas))
 - David (python, a bit of R)
 -

## General Question

Should we decide on a tool/programming language and collaboration workflow beforehand?
Maybe even stick to one programming language?
Idea: people can add their preferred language/tool upon sign-up. If there are at least three participants with the same preference they'll use that in a break out room. If there are not enough people for a tool they can join other rooms or agree on using any other tool together.

## Collaborative Tools and Workflow

For Notebooks (R, python, julia, js, ...) with real time collaboration [CoCalc](https://cocalc.com) seems to be the best option right now. It worked great last time so we'll stick to it for now. You need to register an account there (it is free).

### Real time collaboration tools

Feel free to add suggestions to this list

- [VS Code](https://code.visualstudio.com/) with [Live Share Extension](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) (very promising but notebook support currently broken), languages: python, R, julia, ...
<details>
Unfortunately, notebook support with VS Code Live Share is an experimental feature which is currently broken (but expected to be fixed soon): https://docs.microsoft.com/en-us/visualstudio/liveshare/reference/notebooks and https://github.com/MicrosoftDocs/live-share/issues/4291. Update: on June 22, this issue was anounced as fixed. Unfortunately there is a new (unrelated) issue that prevents notebook output from being shown for guests: https://github.com/MicrosoftDocs/live-share/issues/4342. This issue is being worked on...

Once this is available, it seams to be the ideal solution especially as it has a unified interface independent of the language (python/julia/R/...)

<!-- :warning: It would be helpful if you could install [VS Code](https://code.visualstudio.com/) with [Live Share Extension](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) before hand. -->

> If notebook support is fixed the [VS Code Insiders](https://code.visualstudio.com/insiders/) version would be required as long as it is experimental. This can be installed alongside regular VS Code without problems.
</details>


- Jupyter Lab [real time collaboration](https://github.com/jupyterlab/jupyterlab/pull/10118) (alpha feature), languages: python, R, julia, ...
- Observable [multiplayer](https://observablehq.com/@observablehq/introducing-observable-collaboration) (experimental feature), languages: javascript

## Dataset

[UN Votes](https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-03-23/readme.md)

Question Pool:
- Generic
    - What kind of information is stored in the table?
    - How much data is missing?
    - Is the dataset clean or are there any clear outliers?
- Specific
    - Which country has the highest fraction of "Yes" ("No") votes?
    - How did the fraction of "Yes" votes change over time for each country (by topic)?
    - Which pair of countries (dis)agrees the most?
    - What are the topics of the votes that Germany voted "No"?
    - Which vote had the least amount of "Yes" votes?
    - What was the amount of general agreement over the years?
    - How many votes went unanimous?
- Further Ideas
    - Create a world map where you can select a year and countries will be color coded based on the fraction of "Yes" votes in that year
    - Same map as before but you can select specific votes and see the "Yes"/"No"/"Abstain" per country
    - Country graph with connections depending on the correlation of voting behaviour

## Future Suggestions
> Add your suggestions to the list and :+1: to the end of a line you are interested in

### Datasets
- 

### Kinds of Questions
-

### Tools/Languages
- R/tidyverse
- python
- Excel
- [veezoo](https://www.veezoo.com/)
- [Power BI](https://www.microsoft.com/en-US/download/details.aspx?id=58494)
- javascript

### Skills
- interactive maps
- dashboards
- animations


## Cross Links
 - [previous pad](https://ddojo.github.io/pad_archive/02_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/04_datadojo)
