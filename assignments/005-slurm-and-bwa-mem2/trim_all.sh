#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=00:20:00
#SBATCH --mem=3G
#SBATCH --output=trim_all-%j.out
#SBATCH --error=trim_all-%j.err



# this assumes that you created an environment
# called fastp in class on Tuesday.  If you accidentally
# installed fastp into base, then you don't need this line.

# SLURM on alpine seems to require that conda be initialized
# again.  So we can just source our .bashrc file here first
source ~/.bashrc
conda activate fastp

# This just makes the necessary output directories
mkdir -p results/trimmed2  results/qc/fastp


# FILL IN THE CODE NEEDED TO GET ALL THE SAMPLE NAMES.
# THIS CAN BE DONE IN MANY WAYS, BUT THE RESULT SHOULD BE
# A VARIABLE NAMED SAMPLES THAT EXPANDS TO
# DPCh_plate1_B10_S22 DPCh_plate1_B11_S23 DPCh_plate1_B12_S24 DPCh_plate1_C10_S34 ...
# WITH ALL THE SAMPLE NAME THERE

# We could do this, like before
# SAMPLES=$(basename -s _R1.fq.gz -a  data/fastqs/DPCh_plate1_*R1*)
# However, I am going to pick the sample names out of the  TSV file:
SAMPLES=$(awk 'NR>1 {print $2}' data/sample-array-info.tsv)

# NOW, MODIFY THE FOLLOWING, USING VARIABLE SUBSTITUTION SO THAT S IS USED IN PLACE OF THE SAMPLE
# NAME IN THE COMMAND (i.e. replace DPCh_plate1_B10_S22 with the variable S---not that you will
# need to wrap S in curly braces!)

for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp/${S}.html  -j results/qc/fastp/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
done


