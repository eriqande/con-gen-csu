#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=bwa_map_array-%A_%a.out
#SBATCH --error=bwa_map-_array-%A_%a.err
#SBATCH --array=1-3

# load the module that gives us the bwa software
module load aligners/bwa/0.7.17
module load bio/samtools/1.15.1

# make a directory for log output if it does not already exist
LDIR=results/log/bwa_map_array
ODIR=results/mapped

mkdir -p $LDIR $ODIR

# get shell variables for this array task:
COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID inputs/fq-samples.tsv)
eval $COMM


# run bwa mem on the input and pipe it to samtools to sort it
bwa mem \
  -R "@RG\tID:$Sample.$LB.$Lane\tSM:$Sample\tLB:$LB\tPL:ILLUMINA" \
  resources/genome.fasta \
  $fq1 $fq2  2> $LDIR/bwa_mem_$out_name.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$out_name.bam
) 2> $LDIR/samtools_$out_name.log


