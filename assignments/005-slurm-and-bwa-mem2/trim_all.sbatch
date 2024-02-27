#!/bin/bash

#SBATCH --job-name=TRIM
#################
#a file for job output
#SBATCH --output=TRIM.%j.out
#################
# a file for errors from the job for each sample
#SBATCH --error=TRIM.%j.err
#################
#time for the job
#SBATCH -t 1:00:00
#################
#SBATCH --partition=amilan
#SBATCH --qos=normal
#################
#SBATCH --nodes=1
#SBATCH --ntasks-per-node 4
#################
#SBATCH --mem=16G
#################
#get emailed about job BEGIN, END, and FAIL
#SBATCH --mail-type=END
#################
#SBATCH  --mail-user=ldurkee@colostate.edu

# this assumes that you created an environment
# called fastp in class on Tuesday.  If you accidentally
# installed fastp into base, then you don't need this line.
conda init
source ~/.bashrc

conda activate fastp

# mkdir ../../results/trimmed2


# FILL IN THE CODE NEEDED TO GET ALL THE SAMPLE NAMES.
# THIS CAN BE DONE IN MANY WAYS, BUT THE RESULT SHOULD BE
# A VARIABLE NAMED SAMPLES THAT EXPANDS TO
# DPCh_plate1_B10_S22 DPCh_plate1_B11_S23 DPCh_plate1_B12_S24 DPCh_plate1_C10_S34 ...
# WITH ALL THE SAMPLE NAME THERE

SAMPLES=$(ls data/fastqs/* | cut -d '_' -f 3,4)


# NOW, MODIFY THE FOLLOWING, USING VARIABLE SUBSTITUTION SO THAT S IS USED IN PLACE OF THE SAMPLE
# NAME IN THE COMMAND (i.e. replace DPCh_plate1_B10_S22 with the variable S---not that you will
# need to wrap S in curly braces!)

for S in $SAMPLES; do
    fastp -i data/fastqs/DPCh_plate1_${S}_R1.fq.gz -I data/fastqs/DPCh_plate1_${S}_R2.fq.gz  \
          -o results/trimmed2/DPCh_plate1_${S}_R1.fq.gz -O results/trimmed2/DPCh_plate1_${S}_R2.fq.gz \
         ## -h results/qc/fastp/DPCh_plate1_${S}.html  -j results/qc/fastp/DPCh_plate1_${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
done

