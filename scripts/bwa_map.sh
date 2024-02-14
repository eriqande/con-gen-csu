#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=bwa_map-%j.out
#SBATCH --error=bwa_map-%j.err

# this is a little script to map a pair of fastq files
# that are in data/fastqs.
#
# The first positional parameter ($1)
# should be something like: DPCh_plate1_B10_S22

# load the module that gives us the bwa software
module load bwa
module load samtools

# make a directory for log output if it does not already exist
LDIR=results/log/bwa_map
ODIR=results/mapped

mkdir -p $LDIR $ODIR

SAMP=$1

# run bwa mem on the input and pipe it to samtools to sort it
bwa mem data/genome/genome.fasta \
  data/fastqs/${SAMP}_R1.fq.gz \
  data/fastqs/${SAMP}_R2.fq.gz  2> $LDIR/bwa_mem_${SAMP}.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$SAMP.bam
) 2> $LDIR/samtools_$SAMP.log


