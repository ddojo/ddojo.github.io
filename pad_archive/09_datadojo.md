# Data Dojo Würzburg 9 - DataDojo@Lunch

## February 2022
 - **When:** Thursday, February 10<sup>th</sup>, 2022 **at 12:00pm**
 - **Where:** Zoom
 - **Zoom:** 
    - [**Link**](https://uni-wuerzburg.zoom.us/j/98722710806?pwd=cm9tZUE5U1VWb3RIcXhJcUZrTXV2dz09)
    - **Meeting ID:** 987 2271 0806
    - **Password:** 952914
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## DataDojo@Lunch

This time we try something new: we'll meet at 12pm for just 1 hour. This way you can have your lunch while attending the Dojo (we are taking turns coding as usual). This is an experiment to see if this format better fits the tight schedules of the participants.

## Participants
> Please add your name to the list (click the pen icon at the top left to edit) if you plan to come. And please remove it if you can not make it. Feel free to add your preferred tool or programming language.
 - Markus (R/tidyverse)
 - Laura (Python, R)
 - Andreas (Julia/DataFrames.jl)
 - Simon (Python)
 - Anne (R/tidyverse)
 - Florens (Python, R)
 - *»add your name here«*

## Dataset

Local results of the German Federal Election from Würzburg ([Stadt](https://www.wuerzburg.de/wahlen/Wahl-2021-09-26/09663000/praesentation/opendata.html) and [Landkreis](https://okvote.osrz-akdb.de/OK.VOTE_UF/BTW21/09679000/praesentation/index.html)) together with demographic information (e.g. age structure): [Stadt](https://opendata.wuerzburg.de/explore/dataset/stadtbezirke_hauptwohnsitz_altersgruppen_2019/export/), [Landkreis](https://www.statistik.bayern.de/statistik/gebiet_bevoelkerung/demographischer_wandel/gemeinden/index.html)

### Specific task for today

- Select Stadt or Land voting data
- Bring into the tidy format:

| Place | Party |   Erststimmen | Zweitstimmen  |
| ----- | ----- | -------------:| -------------:|
| bla   | blub  |          0.23 | 0.12          |

- Add a column `Mean Age` to that table

When you are done, feel free to do the same for Stadt/Land (whichever you did not select first) or start exploring some of the interesting questions (for inspiration, see below).

Question Pool:
- Generic
    - What kind of information is stored in the table(s)?
    - How much data is missing?
    - Is the dataset clean or are there any clear outliers?
    - How can the different datasets be combined?
    - How to visualize the results in a suitable way?
- Specific
    - Overview of voting behavior: how does voting behavior vary by location? (General trends, total variability, ...)
    - Overview of demographic info: how does age/gender distribution vary by location? (General trends, total variability, ...)
    - Which party has the strongest (positive/negative) correlation with age?
    - Which party has the strongest (positive/negative) correlation with gender?
    - Can we predict voting behavior from age/gender distribution? (or vice-versa)
    - **Add your own questions**
- Further Ideas
    - Show results with district resolution on an interactive map (e.g using [these shapes](https://gadm.org/index.html))
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


## Cross Links
 - [previous pad](https://ddojo.github.io/pad_archive/08_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/10_datadojo)
