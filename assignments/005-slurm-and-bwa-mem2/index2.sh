#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=bwa_index2-%j.out
#SBATCH --error=bwa_index2-%j.err

source ~/.bashrc


conda activate bwa-mem2


DIR=results/log/bwa_index2
mkdir -p $DIR

bwa-mem2 index $1 > $DIR/log.txt 2>&1
