#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=fastp_trim-%j.out
#SBATCH --error=fastp_trim-%j.err


# make a directory for log output if it does not already exist
DIR=results/log/bwa_index2
mkdir -p $DIR


# indexing using bwa-mem2
./../miniforge3/bin/bwa-mem2 index $1> $DIR/log.txt 2>&1
