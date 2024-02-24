#!/bin/bash
#
#################
#set a job name
#SBATCH --job-name=trim2
#################
#a file for job output, you can check job progress for each sample
#SBATCH --output=trim2.%j.out
#################
#SBATCH --error=trim2.%j.err
#################
#SBATCH -t 1:00:00
#################
#quality of service; think of it as job priority
#SBATCH --partition=amilan
#SBATCH --qos=normal
#################
#number of nodes -n 1
#SBATCH --ntasks-per-node 1
#################
#SBATCH --mem=3G
#################
#get emailed about job BEGIN, END, and FAIL
#SBATCH --mail-type=END,FAIL
#################
#who to send email to; please change to your email
#SBATCH  --mail-user=foxhol@colostate.edu
#################
#now run normal batch commands
set-x

mamba init bash
source ~/.bashrc
mamba activate fastp

# make output directory

mkdir -p results/trimmed2 results/qc/fastp

SAMPLES=$(ls data/fastqs/*fq.gz | cut -d "_" -f 1-4 | cut -d "/" -f 3)

for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1_trim.fq.gz -O results/trimmed2/${S}_R2_trim.fq.gz \
          -h results/qc/fastp/${S}.html  -j results/qc/fastp/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
          --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20    
done
