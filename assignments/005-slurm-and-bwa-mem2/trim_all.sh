#!/bin/bash

# -%j tags the error and out put file with the job code. 
#SBATCH --time=00:10:00
#SBATCH --output=trimm_all-%j.out
#SBATCH --error=trimm_all-%j.err

source ~/.bashrc

conda activate fastp

mkdir -p results/trimmed2 results/trimmed2-qc/fastp

SAMPLES=$(basename -s _R1.fq.gz -a data/fastqs/*R1.fq.gz)

for S in $SAMPLES; do
    fastp -i "data/fastqs/${S}_R1.fq.gz" -I "data/fastqs/${S}_R2.fq.gz" \
          -o "results/trimmed2/${S}_R1.fq.gz" -O "results/trimmed2/${S}_R2.fq.gz" \
          -h "results/trimmed2-qc/fastp/${S}.html" -j "results/trimmed2-qc/fastp/${S}.json" \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20    
done

sha1sum results/trimmed2/*.gz > assignments/005-slurm-and-bwa-mem2/bam_sha1.txt 
