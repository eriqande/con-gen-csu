#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=bwa_index-%j.out
#SBATCH --error=bwa_index-%j.err

# Create a directory for log output if it does not already exist
DIR=results/log/bwa2_index
mkdir -p $DIR

# Run bwa-mem2 index on the input
bwa-mem2 index "$1" > "$DIR/log.txt" 2>&1

