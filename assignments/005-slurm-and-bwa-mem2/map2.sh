#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=15:00
#SBATCH --output=map2-%j.out
#SBATCH --error=map2-%j.err
#SBATCH --array=1-16

source ~/.bashrc

conda activate bwa-mem2
module load samtools

LDIR=results/log/bwa_map2_array
ODIR=results/mapped2

mkdir -p $LDIR $ODIR

COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/sample-array-info.tsv)
eval $COMM

bwa-mem2 \
  mem -R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}.${barcode}\tPL:ILLUMINA" \
  data/genome/genome.fasta \
  results/trimmed2/${sample}_R1.fq.gz results/trimmed2/${sample}_R2.fq.gz 2> $LDIR/bwa_mem_$sample.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$sample.bam
) 2> $LDIR/samtools_$sample.log
