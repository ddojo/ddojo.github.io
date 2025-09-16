---
title: Data Dojo Würzburg 34

---

# Data Dojo Würzburg 34

## DataDojo@Lunch - live

## June 2025
 - **When:** Wednesday, **June 18<sup>th</sup>**, 2025 at 11:00am until 12:30pm (90 minutes) 
 - **Where:** [CCTB](https://www.google.de/maps/place/Center+for+Computational+and+Theoretical+Biology+(CCTB),+University+of+W%C3%BCrzburg/@49.7850742,9.9723819,19z/data=!3m1!4b1!4m5!3m4!1s0x47a28fc802e5e8d9:0x6b62d2cbd2e6f094!8m2!3d49.7851122!4d9.9730135) or online (ask for hybrid setup and link)
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## Towards DataDojo 2.0

In the CCTB general assembly in April 2025, we decided to make some changes to the DataDojo to  make it more valuable and fun.
This is what we'll try first:
- everyone reads the two-page [Points of Significance](https://www.nature.com/collections/qghhqm/pointsofsignificance) paper [Importance of being uncertain](https://www.nature.com/articles/nmeth.2613) before the event
- on May 7 we meet at 11 in the large seminar room (regular seminar time) and discuss the content of the paper for roughly 15 minutes
- then we split into pairs - each pair works together on one machine to reproduce one of the figures (probably Fig. 2) for roughly 60 minutes - I will provide the required data
- then we meet again and every pair shares their result and lessons learned. This takes another 15 minutes

So, as before, it will be hands-on and 90 minutes, so feel free to bring your lunch. But it will be more focused and with smaller groups.

## Assign pairs

Currently a dumb version (does not take experience level and language preferences into account).

```uiua
"Caro Sascha Axel Joana Felix Jannis Magdalena Markus"
⍉⬚""↯⊟2⌈÷2⊸⧻°⍆⊜□⊸≠@ 
```

<iframe
  src="https://uiua.org/embed?src=0_14_0-rc_3__"
  style="width:100%; height: 300px"
></iframe>

## Dataset

**PoS - Error Bars**

Please read [Error Bars](https://www.nature.com/articles/nmeth.2659) before the dojo.

### Comprehension Questions

Make them answerable with yes/no or similar to make the first part more interactive

- what are the three most common types of Error bars?
- which of the error bar types does not tell us anything about our measurement uncertainty?
- True or false:
    - if the s.e.m. error bar of a sample does not include 0, then the mean of the underlying population is significantly different from 0
    - if the 95% CI of two samples overlap, the difference between the means of those groups is not significant
    - for large sample sizes (n>15) the length of the 95% CI is roughly twice of the s.e.m. length
    - if we take two samples with same sample size from the same distribution, the mean of the second has a 95% chance to fall within the 95% CI of the first (and vice-versa)

### Task

Reproduce Figure 2a using simulations.

![fig2](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fnmeth.2659/MediaObjects/41592_2013_Article_BFnmeth2659_Fig2_HTML.jpg?as=webp)

To calculate the width of a 95% CI for a sample of size `n` drawn from a normal distribution:
- calculate the standard error of the mean (`s.e.m.`) for the sample (`sd(x)/sqrt(n)`)
    - (if you use `np.std` in the calculation, set `ddof=1`)
- calculate the critical t-value for `n-1` degrees of freedom and a value of 0.975 (depends only on `n` not on the specific sample)
    - R (`qt(.975, n-1)`)
    - julia with `Distributions` (`quantile(TDist(n-1), .975`)
    - python with `scipy` (`scipy.stats.t.ppf(.975, n-1)`)
- multiply the `s.e.m.` with the t-value

### Getting started

- [Marimo notebook (wasm)](https://marimo.app/l/10z7rz)
- [R script](https://github.com/ddojo/ddojo.github.io/blob/main/sessions/33_PoS_uncertain/getting_started.R) (runnable in [webr](https://webr.r-wasm.org/latest/))

### Further ideas

- for each sample, calculate the fraction of 100 other random samples of the same size, that falls within the 95% CI of the first - what is the distribution of these fractions if you repeat this many times?
- reproduce any of the other figures
- make your figures interactive
- add explanatory text

## Collaborative Tools and Workflow

Use your own device or [CoCalc](https://cocalc.com).
Free choice of programming language, libraries, and tools.

## Future Suggestions
> Feel free to add suggestions to the list.

### Points of Significance

Go through the papers of the [Points of Significance](https://www.nature.com/collections/qghhqm/pointsofsignificance) series.

### Points of View

Go through the papers of the [Points of View](https://communities.springernature.com/posts/data-visualization-a-view-of-every-points-of-view-column) series.

### Medical Statistics

The [Medical Statistics](https://www.biomedcentral.com/collections/cc-medical) series consists of 14 reviews in the journal BMC Critical Care

### Book club

Go through chapters of one of these books

- [Statistical Rethinking](https://xcelab.net/rm/)
- [Regression and Other Stories](https://avehtari.github.io/ROS-Examples/)
- [R for Data Science 2e](https://r4ds.hadley.nz/)

### Coding Dojo Katas

With a stronger focus on coding rather than data analysis, there is [a nice collection of Katas](https://codingdojo.org/kata/)

## Cross Links
 - [previous pad](https://ddojo.github.io/pad_archive/33_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/35_datadojo)
