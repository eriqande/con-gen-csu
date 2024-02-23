#!/bin/bash


#SBATCH --job-name=fastp_trim_all
#SBATCH --output=fastp_trim_all-%j.out
#SBATCH --error=fastp_trim_all-%j.err


source activate fastp


mkdir -p results/trimmed2 results/qc/fastp2



SAMPLES=$(basename -s _R1.fq.gz data/fastqs/*R1.fq.gz)

for S in $SAMPLES; do
     fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp2/${S}.html  -j results/qc/fastp2/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
done

sha1sum results/trimmed2/*.gz > assignments/005-slurm-and-bwa-mem2/sha1_fastqs.txt




