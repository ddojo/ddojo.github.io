library(tidyverse)
data <- read_tsv("https://raw.githubusercontent.com/ddojo/ddojo.github.io/refs/heads/main/sessions/33_PoS_uncertain/fig3.tsv")
irr <- rep(data$Bins, data$Irregular)
hist(irr)
data |>
  pivot_longer(Uniform:Irregular) |>
  ggplot(aes(x=Bins, y=value, fill=name)) +
    geom_col() +
    facet_wrap(~ name)
