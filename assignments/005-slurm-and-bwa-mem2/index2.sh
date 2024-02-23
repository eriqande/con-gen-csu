#!/bin/bash

#SBATCH --cpus-per-task=4
#SBATCH --mem=15G
#SBATCH --time=1:00:00
#SBATCH --output=index.%j.out
#SBATCH --error=index.%j.err

source ~/.bashrc

conda activate bioinf

#indexing the reference fasta
bwa-mem2 index data/genome/genome.fasta
