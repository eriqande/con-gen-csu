#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=map2_array-%A_%a.out
#SBATCH --error=map2_array-%A_%a.err
#SBATCH --array=1-16

# loads base conda env where bwa-mem2 was accidentally installed...
source ~/.bashrc

# load the module that gives us the bwa software
module load samtools

# make a directory for log output if it does not already exist
LDIR=results/log/map2_array
ODIR=results/mapped2

mkdir -p $LDIR $ODIR

# get shell variables for this array task:
COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID results/trimmed2-array-info.tsv)
eval $COMM


# run bwa-mem2 on the input and pipe it to samtools to sort it
# because bwa-mem2 is not in an env right now we have to point to the executable 
bwa-mem2 mem \
  -R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}.${barcode}\tPL:ILLUMINA" \
  data/genome/genome.fasta \
  $fq1 $fq2  2> $LDIR/bwa_mem_2_$sample.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$sample.bam
) 2> $LDIR/samtools_$sample.log
