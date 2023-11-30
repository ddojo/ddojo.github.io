# Data Dojo Würzburg 24

## DataDojo@Lunch - hybrid

## October 2023
 - :warning: we have a summer break, so the next Dojo is in October
 - **When:** Wednesday, October 11<sup>th</sup>, 2023 at 11:00am until 12:30pm (90 minutes)
 - **Where:** [CCTB](https://www.google.de/maps/place/Center+for+Computational+and+Theoretical+Biology+(CCTB),+University+of+W%C3%BCrzburg/@49.7850742,9.9723819,19z/data=!3m1!4b1!4m5!3m4!1s0x47a28fc802e5e8d9:0x6b62d2cbd2e6f094!8m2!3d49.7851122!4d9.9730135) or online (CCTB Seminar Zoom Link)
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## Dataset

### German Electricity Data :electric_plug: 


- Data Source: [SMARD Web Portal](https://www.smard.de/) 
- Task: forecasting (using the past to predict the future)
- Language: [julia](https://julialang.org) or python or R

First steps:
- load the data :heavy_check_mark: 
- split the data into train/val/test sets :heavy_check_mark: 
- plot the time series (at different temporal resolution) :heavy_check_mark: 
- calculate the mean production per month :heavy_check_mark: 
- is there a seasonal pattern (what kinds of seasonalities)
- make a prediction for the validation set
- evaluate the quality of the prediction


## Collaborative Tools and Workflow

For Notebooks (R, python, julia, js, ...) with real time collaboration [CoCalc](https://cocalc.com) seems to be the best option right now. It worked great the last couple of times so we'll stick to it for now. You need to register an account there (it is free).


## Future Suggestions
> Add your suggestions to the list and :+1: to the end of a line you are interested in

### Data Sets
- Extract structured data from pdfs (Example: population statistics in Leinach from [Gemeindeblatt](https://www.leinach.de/aktuelles/gemeindeblatt))
- [Würzburg Baumkataster](https://opendata.bayern/datasets/baumkataster_stadt_wuerzburg-wuerzburg), [Würzburger Klimabäume](https://opendata.bayern/datasets/sls-klimabaeume-wuerzburg)
- [Bee Varroa Image Classification](https://zenodo.org/record/4085044) :bee:
- [German Electricity Data](https://www.smard.de/) :electric_plug: 
- [Mattermost Chat History](https://api.mattermost.com/#tag/posts/operation/GetPostsForChannel) - e.g. analyze the messages and reactions from the [lunch channel](https://cctb-intern.biologie.uni-wuerzburg.de/api/v4/channels/h3azbb4yejd69kg68kdmqiw53r/posts)
- [Wordbank](https://wordbank.stanford.edu/) - data of children learning to talk
- [All Birds](https://onlinelibrary.wiley.com/doi/full/10.1111/ele.13898) :bird: 
- Results of the [Bundestagswahl 2021](https://www.bundeswahlleiter.de/bundestagswahlen/2021/ergebnisse/opendata.html)
- Weather data throughout Germany over time (incl. temperature, precipitation, ...): https://www.dwd.de/DE/leistungen/cdc_portal/cdc_portal.html
- German [Mikrozensus](https://www.destatis.de/DE/Themen/Gesellschaft-Umwelt/Bevoelkerung/Haushalte-Familien/Methoden/mikrozensus.html)
- Kaggle [Titanic](https://www.kaggle.com/c/titanic) or [Tabular Playground](https://www.kaggle.com/competitions?hostSegmentIdFilter=8) or [Meta Kaggle](https://www.kaggle.com/kaggle/meta-kaggle)
- World Trade Data ([Open Trade Statistics](https://tradestatistics.io))
- [Open Citation Data](http://opencitations.net/download#coci)
- [Top 100 charts + Audio Features](https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-09-14/readme.md)
- [Emoji Usage :hugging_face::heart::laughing:](https://observablehq.com/@jenniferdaniel/unicode-emoji-mirror)
- [Observable Curated Datasets](https://observablehq.com/@observablehq/curated-datasets)
- [Abgeordnetenwatch](https://www.abgeordnetenwatch.de/api) - Data on German elected officials in EU-Parlament, Bundes- and Landtag (Election History, Ausschusszugehörigkeit, Side jobs, etc)
- [Button Men Game Results](http://buttonweavers.com/ui/history.html)

### Tools/Languages
- R/tidyverse
- python
- [Power BI](https://www.microsoft.com/en-US/download/details.aspx?id=58494)
- [Tableau](https://www.tableau.com)
- [KNIME](https://www.knime.com/)
- javascript
- julia
- [visidata](https://www.visidata.org/)


### Skills
- interactive maps
- dashboards
- animations

### Data Sources
> all data types are welcome, including tables, images, videos, sounds, DNA, ...

- [OpenData Bayern](https://opendata.bayern)
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
 - [previous pad](https://ddojo.github.io/pad_archive/23_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/25_datadojo)
