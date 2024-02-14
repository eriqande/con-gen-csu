#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --output=r-too-much-mem-%j.out
#SBATCH --error=r-too-much-mem-%j.err


mkdir -p outputs
EDIR=results/log/r-too-much-mem
mkdir -p $EDIR

module load R/4.0.3
Rscript --vanilla -e "x <- runif(1e9); y <- x + 1; y[1:10]" > outputs/r-too-much.out 2> $EDIR/log.txt
