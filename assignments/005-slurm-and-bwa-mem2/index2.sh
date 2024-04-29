#!/bin/bash

#SBATCH --time=00:15:00
#SBATCH --output=index2-%j.out
#SBATCH --error=index2-%j.err

source ~/.bashrc
conda activate bwa-mem2

bwa-mem2 index data/genome/genome.fasta
