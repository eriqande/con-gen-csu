#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=bwa-mem2_index-%j.out
#SBATCH --error=bwa-mem2_index-%j.err

source ~/.bashrc

conda activate bwa-mem2

# this is a little script to index the genome given
# by the first positional parameter ($1)


# make a directory for log output if it does not already exist
DIR=results/log/bwa_index2
mkdir -p $DIR

# run bwa index on the input
bwa-mem2 index $1 > $DIR/log.txt 2>&1
