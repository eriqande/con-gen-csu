#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=fastp.%j.out
#SBATCH --error=fastp.%j.err

set -x
source ~/.bashrc

conda activate fastp

# This just makes the necessary output directories
mkdir -p results/trimmed2 results/qc2/fastp


#Sample names:
# DPCh_plate1_B10_S22 DPCh_plate1_B11_S23 DPCh_plate1_B12_S24 DPCh_plate1_C10_S34 ...
#These are within data/fastqs

SAMPLES=$(basename -a data/fastqs/*_R*.fq.gz | cut -f1-4 -d'_'| uniq)

# Running fastp with input and output files
# Writing HTML and JSON reports
# Providing adapter sequences for trimming
# Turning on adapter sequence auto-detection
# Moving sliding window front to tail, dropping bases to the right if they're below the threshold
# Setting the window size and the threshold quality score

for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc2/fastp/${S}.html -j results/qc2/fastp/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCG \
          --detect_adapter_for_pe \
          --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
done

# Once that is done, we will sha1sum the trimmed files and store the result
# in the assignments folder
sha1sum results/trimmed/*.gz > assignments/005-slurm-and-bwa-mem2/bam_sha1s.txt
