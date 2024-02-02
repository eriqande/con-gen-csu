# To each number (batch difference) write down the underlying causes (capital letters), ways to identify (lowercase letters)

## The batch differences are labelled in numbers:

1. Different chemistry (two-channel vs four-channel)
2. Different sequencing runs
3. Different lengths of reads /  mode of sequencing (PE vs SE, etc.)
4. Different degrees of tissue degradation
5. Different sequencing depths (not necessarily a batch effect...)


## Underlying causes labelled with capital letters

- A. Different calibration of base-quality scores
- B. Sensitivity of some methods to depth variation
- C. Deamination of cytosines ($C \longrightarrow U$)
- D. Poly-G tails
- E. Confidence in mapping is higher for longer sequences


## Ways to identify the problem labelled with lowercase letters

- a. Check the average depth of each individual. Color points by
read depth
- b. Check base composition along the read, especially toward the ends (using fastqc, for example)
- c. Compare diversity estimates _within_ batches with strict vs
relaxed base-quality filters.
- d. Check that $F_\mathrm{ST}$ outliers aren't all from regions with
a high proportion of low MAPQ reads from one of the batches.  Spot
check $F_\mathrm{ST}$ outliers.
- e. Gel electrophoresis; investigate the substitution class among
private alleles in each batch; check diversity estimates when
excluding transitions.


# Then for each number write down ways to mitigate... 

