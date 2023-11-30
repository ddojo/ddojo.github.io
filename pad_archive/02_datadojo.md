# Data Dojo Würzburg 2

## July 2021
 - **When:** July 8<sup>th</sup>, 2021 at 6:00pm
 - **Where:** Zoom
 - **Zoom:** 
    - [Link](https://uni-wuerzburg.zoom.us/j/98523643600?pwd=eE9iZE95blRQNCtIcTBkcnYxak1RZz09)
    - Meeting ID: 985 2364 3600
    - Password: 175005
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## Collaborative Tools and Workflow

We have not found the ideal solution, yet. Some options are available as preview features but not stable, yet. **So this time we will likely start with plain Zoom screen sharing**, we'll switch to something different based on participant interest: probably [CoCalc](https://cocalc.com).

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

[Global Power Plant Database](https://github.com/wri/global-power-plant-database/)

-- suggested by Timo, thanks!


Potential Questions:
- Comparison of regions/countries/continents
- Comparison of plant-types/energy sources
- Find additional data to map MW demand vs. production (per region/country/continent)

Question Pool:
- Generic
    - What kind of information is stored in the table?
    - How much data is missing?
    - Is the dataset clean or are there any clear outliers?
- Specific
    - Which country has the highest number of powerplants (how many, top 10)?
    - Which is the country with the highest power preduction (MW) per continent (how much, top 5)
    - What is the overall proportion of each energy source (by plant number, by MW produced)
    - Which is the greenest country (highest fraction of power from renewable sources)?
    - How does the distribution of power plants look on a worldmap (by type, interactive)?

## Participants
> Please add your name to the list if you plan to come. And please remove it if you can not make it.
 - Markus
 - Timo
 - Stefan
 -

## Future Suggestions
> Add your suggestions to the list and :+1: to the end of a line you are interested in

### Datasets
- https://raw.githubusercontent.com/wri/global-power-plant-database/master/output_database/global_power_plant_database.csv

### Kinds of Questions
- Comparison of regions/countries/continents
- Comparison of plant-types/energy sources
- Find additional data to map MW demand vs. production (per region/country/continent)

### Tools/Languages
- R/tidyverse
- python
- Excel
- [veezoo](https://www.veezoo.com/)
- Power BI
- javascript

### Skills
- interactive maps
- dashboards
- animations


## Cross Links
 - [previous pad](https://ddojo.github.io/pad_archive/01_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/03_datadojo)
