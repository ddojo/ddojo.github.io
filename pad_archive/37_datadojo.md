# Data Crunch Dojo

## Challenges

### 1. Kymograph Analysis

![](http://10.87.174.31:3000/uploads/a136db31-8852-4488-9a8d-f6b91b52f7eb.png) ![](http://10.87.174.31:3000/uploads/41e4e59c-0546-46ff-a779-b875d6822fde.png) ![](http://10.87.174.31:3000/uploads/7e37c931-d917-4597-86ce-b402119e6171.png)


- Data: 100 Kymographs (as images)
- Goal: Determine the number of growth phases for each image (MAE flag)
- Our own approach:
    - determine the length for every timepoint (using classical image analysis)
    - plot this with the images for QC
    - extract the number of growth phases by determining breakpoints in the graph (possibly using a sliding window)
    - remove images that are too noisy
- Possible problem: too easy to solve manually (maybe using 1k images makes it less interesting or use something that is harder for a human to do (e.g. growth rate and duration of the longest growth period))
- Possible alterations/extensions:
    - use simulated data for warm-up (here we have ground truth)
    - let people extract the kymographs from 2D+t images with ROIs
    - let people determine the ROIs from the 2D+t images
    - extract other values from the images (e.g. mean growth rate or total growth)
    - images are taken under different conditions and for different frog species, so we could ask for e.g. mean growth rate by concentration

### 2. IMDB Movie Data

Sascha and Felix brainstorm ideas with others over lunch. Using data or even scripts from movies.

### Further Ideas

#### Research focus

- Image stitching (split a large image into overlapping tiles and shuffle, possible challenge series: exact/inexact match, fixed/dynamic/no overlap, +flipping/mirroring/rotation)
- Get most common sequence for a gene from large vcf file
- Sequence barcode assignment (fastq file with many sequences and barcode sequence at specific position, count barcodes but allow for sequencing errors, there is a list of valid barcodes, assign closest as long as unique, extensible: using sequence quality or adding UMIs)
- Parrondo's paradox (combine two loosing games to a winning game) - https://en.wikipedia.org/wiki/Parrondo%27s_paradox#Coin-tossing_example

#### Fun

- Names in German words (e.g. longest path in graph of names connected by co-occurence in German words)
- Survivor (pick one team each week, that you think will win, if it does you survive) (find retrospective selection strategies under constraints, e.g. in the nfl using only NFC teams + 1, find a strategy that works the same in multiple seasons, find the winning selection with the least amount of total victories (or a set of teams with most victories, for which no winning strategy exists), use win probabilities rather than retrospective wins - most likely winning strategy)
- Sascha: there is a cool public dataset wit stats from NFL games

## Agenda

### Phase I: Challenge selection

Collect ideas from participants and present some of my own.

### Phase II: Challenge creation

Split up into teams of 2-3 to work on a challenge together.

- formulate an initial question/task
- collect the necessary data
- determine the correct solution
- solve the challenge yourself
- (optional) think about follow-up challenges

### Phase III: Challenge testing

In teams of 2-3 (possibly new ones)

- solve the challenges from other teams
- check whether it is easy to understand the task
- try how easily LLMs can solve the challenge
- try how easy the challenge can be solved with a coding agent
