#!/bin/bash
#SBATCH --job-name=trimming
#SBATCH --output=trimming-%j.out
#SBATCH --error=trimming-%j.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=4GB

mkdir -p results/trimmed2


# activate fastp 
source ~/.bashrc
conda activate fastp


SAMPLES=$(basename -a -s _R1.fq.gz data/fastqs/*R1.fq.gz)


for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp/${S}.html  -j results/qc/fastp/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20    

done

