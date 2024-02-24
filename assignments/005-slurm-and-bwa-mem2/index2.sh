#!/bin/bash

#SBATCH --job-name=index
#SBATCH --output=index.%j.out
#SBATCH --error=index.%j.err
#SBATCH -t 1:00:00
#SBATCH --partition=amilan
#SBATCH --qos=normal
#SBATCH --ntasks-per-node 1
#SBATCH --mem=3G
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=foxhol@colostate.edu
#echo commands to stdout
set -x

mamba init bash
source ~/.bashrc
mamba activate bioinf

FASTA="data/genome/genome.fasta"

bwa-mem2 index $FASTA

