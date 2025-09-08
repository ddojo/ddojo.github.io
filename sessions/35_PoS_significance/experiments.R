# library(terminalgraphics)
# options(device = tgp, term_col = TRUE)

library(tidyverse)
x <- seq(0,5,0.1)
crossing(x, df=c(2,3,4,9,19)) |> mutate(t=2-2*pt(x, df=df), df=as.factor(df)) |> bind_rows(tibble(x=x, df="norm", t=2-2*pnorm(x))) |> ggplot(aes(x,t,col=df)) + geom_line()

