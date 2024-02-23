#!/bin/bash

#SBATCH --job-name=BWA-mem
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=bwa.%j.out
#SBATCH --error=bwa.%j.err
#SBATCH --array=1-16

set -x
source ~/.bashrc

conda activate bioinf
module load samtools


SAMPLE_PATH="/projects/ericacnr@colostate.edu/con-gen-csu"
ID=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/sample-array-info.tsv)
eval $ID
REFERENCE="/projects/ericacnr@colostate.edu/con-gen-csu/data/genome/genome.fasta"

mkdir results/mapped2


bwa-mem2 mem  $REFERENCE	\
	-R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}.${barcode}\tPL:ILLUMINA" 	\
	results/trimmed2/"$sample"_R1.fq.gz results/trimmed2/"$sample"_R2.fq.gz		\
	> results/mapped2/aln_"$sample".sam 2>bwa_mem_"$sample".log

cd results/mapped2
samtools sort -o aln_"$sample".bam aln_"$sample".sam


