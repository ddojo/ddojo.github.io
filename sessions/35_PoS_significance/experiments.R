# library(terminalgraphics)
# options(device = tgp, term_col = TRUE)

library(tidyverse)

# Fig 3.c
x <- seq(0,5,0.1)
crossing(x, df=c(2,3,4,9,19)) |> mutate(t=2-2*pt(x, df=df), df=as.factor(df)) |> bind_rows(tibble(x=x, df="norm", t=2-2*pnorm(x))) |> ggplot(aes(x,t,col=df)) + geom_line()

# Task 1
n <- 5
data <- tibble(x = map(seq(10000), \(x) rnorm(n))) |>
	mutate(m = map_dbl(x, mean), se = map_dbl(x, sd)/sqrt(n), z = m*sqrt(n), t=mr/(se)) |>
	pivot_longer(names_to="stat", z:t)
data |>
	ggplot(aes(x=value, col=stat)) +
		geom_density() +
		xlim(-6,6) +
		geom_line(data=tibble(x=seq(-6,6,0.1),y=dt(x,4), stat="theo"), aes(x=x,y=y))

# Task 2
p_with_norm <- function(n=5, sigma=1) {
        x <- rnorm(n, sd=1)
        mu <- mean(x)
        se <- sigma/sqrt(n) # this would be the required calculation but we usually don't know the real sigma
        se <- sd(x)/sqrt(n) # so we have to use this approximation which is skewed for small n
        z <- abs(mu)/se
        p <- 2*pnorm(z, lower.tail=FALSE)
        p
    }
p_with_t <- function(n=5, sigma=1) {
        x <- rnorm(n, sd=1)
        mu <- mean(x)
        se <- sd(x)/sqrt(n)
        t <- abs(mu)/se
        p <- 2*pt(t, df=n-1, lower.tail=FALSE)
        p
    }

pn <- replicate(1e4, p_with_norm())
pt <- replicate(1e4, p_with_t())
sum(pn<0.05)/length(pn)
sum(pt<0.05)/length(pt)
