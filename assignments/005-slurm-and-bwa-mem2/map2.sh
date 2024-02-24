#!/bin/bash

#SBATCH --job-name=map
#SBATCH --output=map.%j.out
#SBATCH --error=map.%j.err
#SBATCH -t 1:00:00
#SBATCH --partition=amilan
#SBATCH --qos=normal
#SBATCH --ntasks-per-node 10
#SBATCH --mem=36G
#SBATCH --mail-type=END,FAIL
#SBATCH  --mail-user=foxhol@colostate.edu
#SBATCH --array=1-16
#echo commands to stdout
set -x

#acviave conda env with bwa-mem2 & samtools
mamba init
source ~/.bashrc
mamba activate bioinf

# make a directory for log output if it does not already exist
LDIR=results/log/map_array
ODIR=results/mapped2

mkdir -p $LDIR $ODIR

# get shell variables for this array task:
COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/trimmedfq-array-info.tsv)
eval $COMM

# run bwa mem on the input and pipe it to samtools to sort it
bwa-mem2 mem \
  -R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}.${barcode}\tPL:ILLUMINA" \
  data/genome/genome.fasta \
  $fq1 $fq2  2> $LDIR/bwa_mem2_$sample.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$sample.bam
) 2> $LDIR/samtools_$sample.log



