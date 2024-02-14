#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=bwa_map-%j.out
#SBATCH --error=bwa_map-%j.err

# this is a little script to map a pair of fastq files
# that in in data/fastq.  They are named as
# {A,B,C}_R{1,2}.fastq.gz
#
# The first positional parameter ($1)
# should be A, B, or C.

# load the module that gives us the bwa software
module load aligners/bwa/0.7.17
module load bio/samtools/1.15.1

# make a directory for log output if it does not already exist
LDIR=results/log/bwa_map
ODIR=results/mapped

mkdir -p $LDIR $ODIR

SAMP=$1

# run bwa mem on the input and pipe it to samtools to sort it
bwa mem resources/genome.fasta \
  data/fastq/${SAMP}_R1.fastq.gz \
  data/fastq/${SAMP}_R2.fastq.gz  2> $LDIR/bwa_mem_${SAMP}.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$SAMP.bam
) 2> $LDIR/samtools_$SAMP.log


