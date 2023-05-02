# Data Dojo Würzburg 21

## DataDojo@Lunch - live

## April 2023
 - **When:** Wednesday, April 12<sup>th</sup>, 2022 at 11:00am until 12:30pm (90 minutes)
 - **Where:** [CCTB](https://www.google.de/maps/place/Center+for+Computational+and+Theoretical+Biology+(CCTB),+University+of+W%C3%BCrzburg/@49.7850742,9.9723819,19z/data=!3m1!4b1!4m5!3m4!1s0x47a28fc802e5e8d9:0x6b62d2cbd2e6f094!8m2!3d49.7851122!4d9.9730135) or online (CCTB Seminar Zoom Link)
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## Participants
> Please add your name to the list (click the pen icon at the top left to edit) if you plan to come. And please remove it if you can not make it. Feel free to add your preferred tool or programming language.
 - Markus (python/scikit-learn)
 - **» Add your name here «**

## Dataset

### Machine Learning Series

We are doing a series of Data Dojos on machine learning. The task is to classify tree species by their traits (e.g. height, stem diameter, geographic location). :deciduous_tree::evergreen_tree::palm_tree: We use a subset of the recently published database:
[Tallo](https://zenodo.org/record/6637599) 

The full dataset contains measurements for almost 500k individual trees from more than 5k species.

In the first dojo of the series, we filtered the full set to 3 species with reasonable overlap (*Fagus sylvatica*, *Pinus pinaster*, *Quercus ilex*). Now we want to try different Machine Learning methods to classify tree species from traits.

In the second dojo we created our first models.
A very simple "Majority Vote" model and some K-Nearest-Neighbor (KNN) models with scikit-learn.

In the third dojo we explored the effect of scaling on the performance of the KNN models.

In the fourth dojo we explored Decision Trees as models for classification

In the fifth dojo we used Support Vector Machines as models for classification

In the sixth dojo we used ensemble models, including Ada boosting and random forests.

In the seventh dojo we used imputation methods to also make predictions for cases with missing data.

#### Session 8 - TBD
Ideas:
- Hyperparameter tuning (cross validation and grid search)
- NeuralNetworks
- experiment tracking (e.g. mlflow)
- auto ml (e.g. optuna)
- inference/deployment (e.g. on hugging face spaces)
- interpretability (e.g. feature importance, plots, top losses...)
- try to estimate theortical limit for accuracy (e.g. find closest pairs of data points with different labels)

## Collaborative Tools and Workflow

For Notebooks (R, python, julia, js, ...) with real time collaboration [CoCalc](https://cocalc.com) seems to be the best option right now. It worked great the last couple of times so we'll stick to it for now. You need to register an account there (it is free).


## Future Suggestions
> Add your suggestions to the list and :+1: to the end of a line you are interested in

### Data Sets
- [Mattermost Chat History](https://api.mattermost.com/#tag/posts/operation/GetPostsForChannel) - e.g. analyze the messages and reactions from the [lunch channel](https://cctb-intern.biologie.uni-wuerzburg.de/api/v4/channels/h3azbb4yejd69kg68kdmqiw53r/posts)
- [Tree Sizes](https://onlinelibrary.wiley.com/doi/10.1111/gcb.16302) :deciduous_tree::evergreen_tree::palm_tree:
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
 - [previous pad](https://hackmd.io/eijAVY_WSdqdk2wc2ywpjw)
 - [next pad]