# Task

Solve the following Advent of Code challenge: [2024-5](https://adventofcode.com/2024/day/5)

You can use any programming language and library. After solving part 1, there is also part 2.
You can try your solution on the local `sample` and `input` files.

`sample` is the sample from the description with expected results:
- part 1: 143
- part 2: 123

`input` is a realistic input with expected results:
- part 1: 6505
- part 2: 6897

## Coding Dojo

This time it is more a "coding" than a "data" dojo. The general rules remain the same. It is suggested to set a timer to 5 minutes to discuss the strategy before starting to code. Also after solving part 1, take another 5 minutes without coding to discuss the solution strategy for part 2.

## Code snippets to randomize hacking order

### python

```python
import numpy as np
np.random.seed(42)
" → ".join(np.random.permutation("Simon Mike Max Chris Felix Joél Robin".split()))
```

### julia

```julia
using Random
Random.seed!(42)
"Andi Kerstin Chris Caro Jana" |> split |> shuffle |> x -> join(x," → ")
```

### R

```R
library(tidyverse)
set.seed(421)
"Sabine Jana Sascha Markus" %>%  str_split(" ") %>% unlist %>% sample %>% str_c(collapse=" → ")
```