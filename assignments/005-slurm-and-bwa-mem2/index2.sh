#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=bwa_mem2_index-%j.out
#SBATCH --error=bwa_mem2_index-%j.err

# this is a little script to index the genome given
# by the first positional parameter ($1)

#conda is installed on ALPINE but need to source the specific conda.sh to get it to run through the scrip
source /projects/bavila@colostate.edu/miniforge3/etc/profile.d/conda.sh

# I have a conda fastp environment set up
conda activate bwa-mem2

# make a directory for log output if it does not already exist
DIR=results/log/bwa_mem2_index
mkdir -p $DIR

# run bwa index on the input
bwa-mem2 index $1 > $DIR/log.txt 2>&1

# deactivate conda
conda deactivate


