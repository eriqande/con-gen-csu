#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=3G
#SBATCH --output=bwa_index2-%j.out
#SBATCH --error=bwa_index2-%j.err

# this is a little script to index the genome given
# by the first positional parameter ($1)
# using bwa-mem2, which is faster than bwa

# Activate bwa-mem2
source ~/.bashrc
conda activate bwa-mem2

# make a directory for log output if it does not already exist
DIR=results/log/bwa_index2
mkdir -p $DIR

# run bwa-mem2 index on the input
bwa-mem2 index $1 > $DIR/log.txt 2>&1
