# Data Dojo Würzburg 11

## DataDojo@Lunch

## April 2022
 - **When:** Thursday, April 14<sup>th</sup>, 2022 **at 12:00pm**
 - **Where:** Zoom
 - **Zoom:**
    - [Link](https://uni-wuerzburg.zoom.us/j/68185175809?pwd=SkMyMEhXaXZnUFlFdjNqaS9IcGkyUT09)
    - **Meeting ID:** 681 8517 5809
    - **Password:** 853667
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## Participants
> Please add your name to the list (click the pen icon at the top left to edit) if you plan to come. And please remove it if you can not make it. Feel free to add your preferred tool or programming language.
 - Markus (R or julia)
 - Robin R (R/julia)
 - Andi (Julia)
 
## Dataset

Annual German weather data. Compiled from the [Climate Data Center](https://cdc.dwd.de/portal/). We have a table like this:

| station_id | year | temperature | precipitation | sunshine | station_name | lat | long | altitude |
|------------|------|------------:|--------------:|---------:|----------------|-----|------|---------:|
| 5703 | 2020 | 9.7 | 527.3 | 5.1 | Würzburg | 49.8 | 9.96 | 268 |
| ...

for more than 5000 weather stations across Germany and a timespan of over 100 years (for some stations and measurements).

### Specific task for today

#### 30 Day Chart Challenge Special

Create a chart in the category "Relationships - 3-dimensional"

![](https://pbs.twimg.com/media/FPKZks-WUAQXHWB?format=jpg&name=4096x4096)

The stations are already 3D (latitude, longitude, altitude). But we want to plot some relationships of the 3D data regarding temperature, precipitation and sunshine duration (maybe over time).

![](https://i.imgur.com/BHc15yB.png)

**Task: create a chart with the provided data set, that matches the category: Relationships, 3-dimensional.**

Question Pool:
- Generic
    - What kind of information is stored in the table(s)?
    - How much data is missing?
    - Is the dataset clean or are there any clear outliers?
    - How can the different datasets be combined?
    - How to visualize the results in a suitable way?
- Specific
    - 
    - **Add your own questions**
- Further Ideas
    - 
    - **Add your own ideas**

## Collaborative Tools and Workflow

For Notebooks (R, python, julia, js, ...) with real time collaboration [CoCalc](https://cocalc.com) seems to be the best option right now. It worked great the last couple of times so we'll stick to it for now. You need to register an account there (it is free).


## Future Suggestions
> Add your suggestions to the list and :+1: to the end of a line you are interested in

### Data Sets
- Results of the [Bundestagswahl 2021](https://www.bundeswahlleiter.de/bundestagswahlen/2021/ergebnisse/opendata.html)
- Weather data throughout Germany over time (incl. temperature, precipitation, ...): https://www.dwd.de/DE/leistungen/cdc_portal/cdc_portal.html
- German [Mikrozensus](https://www.destatis.de/DE/Themen/Gesellschaft-Umwelt/Bevoelkerung/Haushalte-Familien/Methoden/mikrozensus.html)
- Kaggle [Titanic](https://www.kaggle.com/c/titanic) or [Tabular Playground](https://www.kaggle.com/competitions?hostSegmentIdFilter=8) or [Meta Kaggle](https://www.kaggle.com/kaggle/meta-kaggle)
- World Trade Data ([Open Trade Statistics](https://tradestatistics.io))
- [Open Citation Data](http://opencitations.net/download#coci)
- [Top 100 charts + Audio Features](https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-09-14/readme.md)
- [Emoji Usage :hugging_face::heart::laughing:](https://observablehq.com/@jenniferdaniel/unicode-emoji-mirror)

### Tools/Languages
- R/tidyverse
- python
- [Power BI](https://www.microsoft.com/en-US/download/details.aspx?id=58494)
- [Tableau](https://www.tableau.com)
- [KNIME](https://www.knime.com/)
- javascript
- julia


### Skills
- interactive maps
- dashboards
- animations

### Data Sources
> all data types are welcome, including tables, images, videos, sounds, DNA, ...

- [TidyTuesday](https://github.com/rfordatascience/tidytuesday)
- [Our World in Data](https://ourworldindata.org/) (R package: [owidR](https://github.com/piersyork/owidR)), [Sustainable Development Goals](https://sdg-tracker.org/)
- Open Data Initiatives ([Würzburg](https://opendata.wuerzburg.de/), [Germany](https://www.govdata.de/), [Statistisches Bundesamt](https://www.destatis.de/), [Europe](https://data.europa.eu/en), [APIs](https://bund.dev/))
- [Data is plural](https://docs.google.com/spreadsheets/d/1wZhPLMCHKJvwOkP4juclhjFgqIY8fQFMemwKL2c64vk/htmlview#)
- [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets)
- [Kaggle Datasets](https://www.kaggle.com/datasets) or [Competitions](https://kaggle.com/competitions), e.g. [SLICED](https://www.kaggle.com/search?q=Sliced+in%3Acompetitions)
- [tsibbledata](https://tsibbledata.tidyverts.org/reference/index.html): Time Series Datasets
- [R-text-data](https://github.com/EmilHvitfeldt/R-text-data): Text Datasets, ready to use in R
- [data.world](https://data.world/)
- [Statista](https://de.statista.com/) - the University of Würzburg has a campus license
- [Open Legal Data](https://de.openlegaldata.io/)
- [Bundestag Data](https://github.com/bundestag) (e.g. poll results, deputies, wahl-o-mat, [inspirational blog post](https://jollydata.blog/posts/2021-03-14-bundestag-part-iii/))
- [Deutsche Digitale Bibliothek](https://www.deutsche-digitale-bibliothek.de/newspaper) ([API](https://labs.deutsche-digitale-bibliothek.de/app/ddbapi/), old newspapers from Germany)
- [Earth Observation: Satellite Image Time Series](https://e-sensing.github.io/sitsbook)
- [Machine Learning Datasets](https://paperswithcode.com/datasets)
- Internation (Student) Assessment Data ([TIMSS, PIRLS, PISA, ...](https://pirls.bc.edu/databases-landing.html))
- [(Medical) Imaging Datasets](https://radiopaedia.org/articles/imaging-data-sets-artificial-intelligence), [MedMNIST](https://medmnist.com/)
- [Inspirational Notebooks on Observable](https://observablehq.com/@tomlarkworthy/notebooks2021)
- [Ski resort statistics](https://ski-resort-stats.com/) :skier: 


## Cross Links
 - [previous pad](https://ddojo.github.io/pad_archive/10_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/12_datadojo)
