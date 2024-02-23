#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=0:10:00
#SBATCH --mem=3G
#SBATCH --job-name=index2
#SBATCH --output=index2-%j.out
#SBATCH --error=index-%j.err

cd /projects/rbortner@colostate.edu/con-gen-csu

source ~/.bashrc
conda activate bwa-mem2

#directories
mkdir -p results/log/bwa_mem2_index

#run bwa mem2
bwa-mem2 index $1 > results/log/bwa_mem2_index/log.txt 2>&1
