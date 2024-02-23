#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=00:15:00
#SBATCH --mem=1G
#SBATCH --output=map2-%j.out
#SBATCH --error=map2-%j.err
#SBATCH --array=1-16

module load aligners/bwa-mem2
module load bio/samtools

LDIR=results/log/map2
ODIR=results/mapped2
IDIR=results/trimmed2

mkdir -p $LDIR $ODIR

COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/sample-array-info.tsv)
eval $COMM

bwa-mem2 mem \
	-R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}.${barcode}\tPL:ILLUMINA" \
	data/genome/genome.fasta \
	$IDIR/${sample}_R1.fq.gz $IDIR/${sample}_R2.fq.gz 2> $LDIR/map2_$sample.log | \
(
	samtools view -u - | \
	samtools sort -o $ODIR/$sample.bam
) 2> $LDIR/samtools_$sample.log

sha1sum results/mapped2/*.bam > assignments/005-slurm-and-bwa-mem2/sha1_bams.txt
