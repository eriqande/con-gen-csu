#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=00:15:00
#SBATCH --mem=3G
#SBATCH --output=trimmed-%j.out
#SBATCH --error=trimmed-%j.err

source ~/.bashrc

conda activate fastp




SAMPLES=$(basename -s _R1.fq.gz -a  data/fastqs/DPCh_plate1_*R1*)





for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp2/${S}.html  -j results/qc/fastp2/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
done



