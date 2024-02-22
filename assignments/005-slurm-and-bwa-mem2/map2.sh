#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=bwa_map_array-%A_%a.out
#SBATCH --error=bwa_map_array-%A_%a.err
#SBATCH --array=1-16

#conda is installed on ALPINE but need to source the specific conda.sh to get it to run through the scrip
source /projects/bavila@colostate.edu/miniforge3/etc/profile.d/conda.sh

# I have a conda fastp environment set up
conda activate bioinf

# make a directory for log output if it does not already exist
LDIR=results/log/bwa-mem2_map_array
ODIR=results/mapped2

mkdir -p $LDIR $ODIR

# get shell variables for this array task:
COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/sample-array-info.tsv)
eval $COMM


# run bwa mem on the input and pipe it to samtools to sort it
bwa-mem2 mem \
  -R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}.${barcode}\tPL:ILLUMINA" \
  data/genome/genome.fasta \
  $fq1 $fq2  2> $LDIR/bwa_mem_$sample.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$sample.bam
) 2> $LDIR/samtools_$sample.log


# deactivate conda
conda deactivate

