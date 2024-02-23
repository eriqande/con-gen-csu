#!/bin/bash

#SBATCH --partition="cpu(safe)"
#SBATCH --job-name=map_array
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=sam.rosenbaum@umontana.edu
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=results/log/bwa_map_array/bwa_map_array-%A_%a.out
#SBATCH --error=results/log/bwa_map_array/bwa_map_array-%A_%a.err
#SBATCH --array=1-16

eval "$(conda  shell.bash hook)"
conda activate bwa-mem2

# Make directories 
LDIR=results/log/bwa_map_array
ODIR=results/mapped2
mkdir -p $LDIR $ODIR

# get shell variables for this array task:
COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/updated_sample-array-info.tsv)
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
