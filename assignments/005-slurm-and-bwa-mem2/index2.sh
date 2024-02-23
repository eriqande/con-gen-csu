#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=3G
#SBATCH --output=index2-%j.out
#SBATCH --error=index2-%j.err

# this is a little script to index the genome given
# by the first positional parameter ($1)

# initialize conda and activate the bwa-mem2 env
source ~/.bashrc
conda activate bwa-mem2

# make a directory for log output if it does not already exist
DIR=results/log/bwa_index2
mkdir -p $DIR

# run bwa index on the input
bwa-mem2 index $1 > $DIR/log.txt 2>&1

