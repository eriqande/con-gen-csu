#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=fastq-%j.out
#SBATCH --error=fastq-%j.err


# this assumes that you created an environment
# called fastp in class on Tuesday.  If you accidentally
# installed fastp into base, then you don't need this line.

# conda activate fastp

# This just makes the necessary output directories
mkdir -p results/trimmed2


# FILL IN THE CODE NEEDED TO GET ALL THE SAMPLE NAMES.
# THIS CAN BE DONE IN MANY WAYS, BUT THE RESULT SHOULD BE
# A VARIABLE NAMED SAMPLES THAT EXPANDS TO
# DPCh_plate1_B10_S22 DPCh_plate1_B11_S23 DPCh_plate1_B12_S24 DPCh_plate1_C10_S34 ...
# WITH ALL THE SAMPLE NAME THERE

SAMPLES=$(ls data/fastqs/*R1.fq.gz | cut -d "_" -f 1-4 | cut -d "/" -f 3)

# NOW, MODIFY THE FOLLOWING, USING VARIABLE SUBSTITUTION SO THAT S IS USED IN PLACE OF THE SAMPLE
# NAME IN THE COMMAND (i.e. replace DPCh_plate1_B10_S22 with the variable S---not that you will
# need to wrap S in curly braces!)

for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1_trim.fq.gz -O results/trimmed2/${S}_R2_trim.fq.gz \
          -h results/qc/fastp/${S}.html  -j results/qc/fastp/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20    
done


# Once that is done, we will sha1sum the trimmed files and store the result
# in the assignments folder
# sha1sum results/trimmed/*.gz > assignments/005-slurm-and-bwa-mem2/sha1_fastqs.txt
