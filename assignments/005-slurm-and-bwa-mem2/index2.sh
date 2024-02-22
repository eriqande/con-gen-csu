#!/bin/bash

#SBATCH --partition=amilan
#SBATCH --qos=normal
#SBATCH --account=csu-general
#SBATCH --cpus-per-task=1
#SBATCH --time=00:45:00
#SBATCH --job-name=index2
#SBATCH --output=index2.%j.out
#SBATCH --error=index2.%j.err

source ~/.bashrc

# this is a little script to index the genome using bwa-mem2 given
# by the first positional parameter ($1)

# make a directory for log output if it does not already exist
DIR=results/log/bwa2_index
mkdir -p $DIR

# run bwa-mem2 index on the input
bwa-mem2 index $1 > $DIR/log.txt 2>&1
