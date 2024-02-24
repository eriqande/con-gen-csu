#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=0:15:00
#SBATCH --mem=3G
#SBATCH --job-name=fastp_trim_all
#SBATCH --output=fastp_trim_all-%j.out
#SBATCH --error=fastp_trim_all-%j.err

####  Mike Antolin
####  005-005-slurm-and-bwa-mem2/trim-all.sh

####  Get ALPINE ready to SLURM
module load slurm/alpine

#### get a node
acompile -h

cd /projects/antolin@colostate.edu/con-gen-csu

##### Activate fastp visa source ~/.bashrc first
source ~/.bashrc
conda activate fastp

####  Make directories for results
mkdir -p results/trimmed2 results/qc/fastp2

####  Create vector of sample names from the FASTA data
path=data/fastqs
SAMPLES=$(basename -s _R1.fq.gz -a $path/*R1*)
echo $SAMPLES

# MODIFIED WITH ${S}
for S in $SAMPLES; do
    fastp -i data/fastqs/${S}_R1.fq.gz -I data/fastqs/${S}_R2.fq.gz  \
          -o results/trimmed2/${S}_R1.fq.gz -O results/trimmed2/${S}_R2.fq.gz \
          -h results/qc/fastp2/${S}.html  -j results/qc/fastp2/${S}.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20
          echo "IN PROGRESS"
done

conda deactivate

####  Command prompts to sbatchy.txt
#### (base) [antolin@colostate.edu@login11 con-gen-csu]$ sbatch assignments/005-slurm-and-bwa-mem2/trim_all.sh

