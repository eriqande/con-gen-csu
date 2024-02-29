#!/bin/bash

#SBATCH --time=00:30:00
#SBATCH --mem=3G
#SBATCH --output=bwa_index-%j.out
#SBATCH --error=bwa_index-%j.err

source activate fastp

mkdir -p results/trimmed2 results/qc/fastp

SAMPLES=$(basename -s _R2.fq.gz -a data/fastqs/*R2*)

for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp/${S}.html  -j results/qc/fastp/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20    
done

sha1sum results/trimmed/*.gz > assignments/005-slurm-and-bwa-mem2/sha1_fastqs.txt