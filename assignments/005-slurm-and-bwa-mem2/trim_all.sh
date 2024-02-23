#!/bin/bash

#SBATCH --partition="cpu(safe)"
#SBATCH --job-name=trim_all
#SBATCH --time=2:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=sam.rosenbaum@umontana.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=80G

eval "$(conda  shell.bash hook)"
conda activate fastp

# Make a sub-directory within results to hold the trimmed fastqs:
mkdir results/trimmed2 

# Create a file storing the unique sample names:
ls data/fastqs | cut -d '_' -f 1-4 | sort -u > sample_names.txt

# Variable holding sample names file:
JOBS_FILE=sample_names.txt

# Assign contents of JOBS_FILE to a new variable:
SAMPLES=$(cat ${JOBS_FILE})

for S in ${SAMPLES};
do

fastp -i data/fastqs/${S}_R1.fq.gz \
      -o results/trimmed2/${S}_R1_trimmed.fq.gz \
      -I data/fastqs/${S}_R2.fq.gz \
      -O results/trimmed2/${S}_R2_trimmed.fq.gz \
      -h results/qc/fastp/${S}.html \
      -j results/qc/fastp/${S}.html.json \
      --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
      --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
      --cut_right --cut_window_size 4
done
