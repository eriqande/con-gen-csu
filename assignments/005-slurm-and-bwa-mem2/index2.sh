#!/bin/bash

#SBATCH --partition="cpu(safe)"
#SBATCH --job-name=bwa_mem2
#SBATCH --time=2:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=sam.rosenbaum@umontana.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=80G

eval "$(conda  shell.bash hook)"
conda activate bwa-mem2

bwa-mem2 index data/genome/genome.fasta
