#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=00:15:00
#SBATCH --mem=2M
#SBATCH --output=index2-%j.out
#SBATCH --error=index2-%j.err

module load aligners/bwa-mem2

DIR=results/log/index2
mkdir -p $DIR

bwa-mem2 index $1 > $DIR/log.txt 2>&1
