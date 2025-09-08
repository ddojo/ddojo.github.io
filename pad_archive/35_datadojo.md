---
title: Data Dojo Würzburg 35

---

# Data Dojo Würzburg 35

## DataDojo@Lunch - live

## October 2025
 - **When:** Wednesday, **September 17<sup>th</sup>**, 2025 at 11:00am until 12:30pm (90 minutes) 
 - **Where:** [CCTB](https://www.google.de/maps/place/Center+for+Computational+and+Theoretical+Biology+(CCTB),+University+of+W%C3%BCrzburg/@49.7850742,9.9723819,19z/data=!3m1!4b1!4m5!3m4!1s0x47a28fc802e5e8d9:0x6b62d2cbd2e6f094!8m2!3d49.7851122!4d9.9730135) or online (ask for hybrid setup and link)
 - **Info:** [DataDojo Website](https://ddojo.github.io/), [Repo](https://github.com/ddojo/ddojo.github.io)

## Towards DataDojo 2.0

In the CCTB general assembly in April 2025, we decided to make some changes to the DataDojo to  make it more valuable and fun.
This is what we currently try:
- everyone reads the announced two-page [Points of Significance](https://www.nature.com/collections/qghhqm/pointsofsignificance) paper before the event
- we meet at 11 in the large seminar room (regular seminar time) and discuss the content of the paper for roughly 15 minutes
- then we split into pairs - each pair works together on one machine to reproduce one of the figures for roughly 60 minutes - I will provide the required data
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

**PoS - Significance, P values and t-tests**

Please read [Significance, P values and t-tests](https://www.nature.com/articles/nmeth.2698) before the dojo.

### Comprehension Questions

- True or false:
    - TODO

### Tasks

#### Task 1 - why not use z for t? - or the difference between s and σ

Reproduce Supplementary Figure 4
![image](https://hackmd.io/_uploads/By7GrU3qex.png)


1. Simulate **r**=10_000 samples of size **n**=5 from a standard normal distribution (**μ**=0, **σ**=1).
For each sample:
2. Calculate the sample mean **m**
3. Calculate the test statistic **t** using the sample standard deviation **s**:
$$
t = \frac{m}{s/\sqrt{n}}
$$
4. Calculate the test statistic **z** using the *population* standard deviation **σ** = 1
$$
z = \frac{m}{\sigma/\sqrt{n}}
$$
5. Plot the distribution of **t** and **z** values
6. (Optional) Plot lines for the standard normal distribution and the Student's t distribution (with df=**n**-1=4)
7. (Optional) What happens if you change **n**, **r**, **σ**, or **μ**?

#### Task 2 - does it matter for the p-value?

1. As above, simulate **r**=10_000 samples of size **n**=5 from a standard normal distribution (**μ**=0, **σ**=1). For each sample: 
2. Calculate the **t** test statistic as above
3. Calculate the p-value ($p_n$) as the probability to draw a more extreme value than |**t**| from a standard normal distribution
4. Calculate the p-value ($p_t$) as the probability to draw a more extreme value than |**t**| from a Student's t distribution (with df=**n**-1=4)
5. Compare the fraction of $p_n$ and $p_t$ values that are below a certain threshold (e.g. 0.05)
6. Repeat the above steps with different values for **n**(≥2)

Questions:
- What do you expect the proportion of $p_n \le 0.05$ to be? What is it?
- What do you expect the proportion of $p_t \le 0.05$ to be? What is it?
- How does the difference between $p_n$ and $p_t$ change with increasing **n**? (Feel free to plot it)

### Getting started

Code to sample from a standard normal distribution and calculate sample means (**m**) and sample standard deviations (**s**):

```R
# R
samples <- replicate(10000, rnorm(5))
m <- apply(samples, 2, mean)
s <- apply(samples, 2, sd)
```

```python
# python
import numpy as np
samples = np.random.normal(size=(5, 10000))
m = samples.mean(axis=0)
s = samples.std(axis=0, ddof=1)
```

```julia
# julia
using Random, Distributions
samples = rand(Normal(), (5, 10000));
m = mean(eachcol(samples));
s = std(eachcol(samples))
```

### Further ideas

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
 - [previous pad](https://ddojo.github.io/pad_archive/34_datadojo)
 - [next pad](https://ddojo.github.io/pad_archive/36_datadojo)