#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=00:05:00
#SBATCH --output=fastp2-%j.out
#SBATCH --error=fastp2-%j.err

# Activate fastp
source ~/.bashrc
conda activate fastp

# Make the necessary output directories
mkdir -p results/trimmed2 results/qc/fastp2

# Code to get all the sample names
SAMPLES=$(basename -s _R1.fq.gz -a data/fastqs/*_R1.fq.gz)

# For loop to run fastp for all forward and reverse reads
for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp2/${S}.html  -j results/qc/fastp2/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
done
