# Data Dojo Würzburg 8

## January 2022
 - **When:** Thursday, January 13<sup>th</sup>, 2022 at 6:00pm
 - **Where:** Zoom
 - **Zoom:** *The event has ended*
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## Participants
> Please add your name to the list (click the pen icon at the top left to edit) if you plan to come. And please remove it if you can not make it. Feel free to add your preferred tool or programming language.
 - Markus (julia)
 - Robin R. (R/julia, maybe python)
 - *»add your name here«*

## Dataset

[Results of the German Federal Election](https://www.bundeswahlleiter.de/bundestagswahlen/2021/ergebnisse/opendata.html#39734920-0eaf-4633-8858-ae792d5d610b) including local results from Würzburg ([Stadt](https://www.wuerzburg.de/wahlen/Wahl-2021-09-26/09663000/praesentation/opendata.html) and [Landkreis](https://okvote.osrz-akdb.de/OK.VOTE_UF/BTW21/09679000/praesentation/index.html))

Question Pool:
- Generic
    - What kind of information is stored in the table(s)?
    - How much data is missing?
    - Is the dataset clean or are there any clear outliers?
- Specific
    - In how many Wahlkreisen did the Greens lose votes compared to 2017?
    - In how many Wahlkreisen did the AfD lose votes compared to 2017?
    - What is the fraction of Wahlkreise for each party in which they did not reach 5%?
    - Which party had the strongest decline/increase in any federal state?
    - Which party had the most extreme results? &rarr; highest variance in votes by Wahlkreis
    - Are the Pirates still relevant in any Wahlkreis/State?
    - Which party below 5% had the best result in any Ort/Stadtteil around Würzburg?
    - Which was the strongest below-5%-party per Ort/Stadtteil?
    - Which Orte/Stadtteile voted most similar/dissimilar?
    - Visualize the results of the local votes in a suitable way :stuck_out_tongue_winking_eye: 
    - **Add your own questions**
- Further Ideas
    - Can we link the results to other demographic information (e.g. mean age, gender distribution, ..., [data for Würzburg Stadt](https://opendata.wuerzburg.de/explore/dataset/stadtbezirke_altenquotient/), [more](https://www.destatis.de/DE/Themen/Gesellschaft-Umwelt/Bevoelkerung/Bevoelkerungsstand/_inhalt.html))
    - Show results with district resolution on an interactive map (e.g using [these shapes](https://gadm.org/index.html))
    - **Add your own ideas**
- Inspiration
    - [Zeit Map](https://www.zeit.de/politik/deutschland/2021-09/ergebnisse-bundestagswahl-gemeinde-karte)

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


## Cross Links
 - [previous pad](https://ddojo.github.io/pad_archive/07_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/09_datadojo)
