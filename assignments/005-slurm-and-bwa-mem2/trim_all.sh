#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=trim_all-%j.out
#SBATCH --error=trim_all-%j.err

# include the first line to make is a bash run script

#conda is installed on ALPINE but need to source the specific conda.sh to get it to run through the scrip
source /projects/bavila@colostate.edu/miniforge3/etc/profile.d/conda.sh

# I have a conda fastp environment set up
conda activate fastp

# This just makes the necessary output directories
mkdir -p results/trimmed2 results/qc2/fastp


# Note: there are R1 and R2 for each sample. Only need the name so you can just use the R1
# basename -s removes the "direct match" _R1.fq.gz; the -a location allows for the globbing
# SAMPLES is an object with all the sample names.
SAMPLES=$(basename -s _R1.fq.gz -a  data/fastqs/DPCh_plate1_*R1*)



# a for loop that uses the object SAMPLES, and S to substitue into the fastp command
# the \ allows for a new line
for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp/${S}.html  -j results/qc/fastp/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
done


# deactivate conda
conda deactivate


