#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=0:15:00
#SBATCH --output=bwa_mem2_map_array-%A_%a.out
#SBATCH --error=bwa_mem2_map_array-%A_%a.err
#SBATCH --array=1-16

####  Mike Antolin
####  005-005-slurm-and-bwa-mem2/map2.sh

####  Get to the right directory
cd /projects/antolin@colostate.edu/con-gen-csu

# source ~/.bashrc and activate bwa-mem2 and load samtools
source ~/.bashrc
conda activate bwa-mem2
module load samtools

#### make a directory for log output if it does not already exist
LDIR=results/log/bwa_mem2_map_array
ODIR=results/mapped2

mkdir -p $LDIR $ODIR

#### Acquire shell variables for this array task from the sample-array-infor.tsv file:
COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/sample-array-info.tsv)
eval $COMM

#### Run bwa-mem2 on the input and pipe it to samtools to sort it
#### NOTE, after consulting with Robyn, I got your advice to change '$fq1' and '$fq2' to 
#### 'results/trimmed2/${sample}_R1.fq.gz' and 'results/trimmed2/${sample}_R2.fq.gz'.  
#### Use the .tsv columns to direct to different fq files


bwa-mem2 mem \
  -R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}.${barcode}\tPL:ILLUMINA" \
  data/genome/genome.fasta \
  results/trimmed2/${sample}_R1.fq.gz \
  results/trimmed2/${sample}_R2.fq.gz  \
  2> $LDIR/bwa_mem2_$sample.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/$sample.bam
) 2> $LDIR/samtools_$sample.log


####  Command prompts to sbatchy.sh
#### (base) [antolin@colostate.edu@login11 con-gen-csu]$ sbatch assignments/005-slurm-and-bwa-mem2/map2.sh

