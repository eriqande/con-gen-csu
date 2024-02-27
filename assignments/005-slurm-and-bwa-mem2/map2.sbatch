#!/bin/bash

#SBATCH --job-name=bwa-mem2

#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --output=bwa2_map_array-%A_%a.out
#SBATCH --error=bwa2_map_array-%A_%a.err

#SBATCH --array=1-16%5 

#SBATCH --nodes=1
#SBATCH --ntasks-per-node 4
#SBATCH --mem=16G

#SBATCH --mail-type=END
#SBATCH --mail-user=ldurkee@colostate.edu

# load the module that gives us the bwa software
# conda init
# conda activate bwa-mem2
module load samtools

# make a directory for log output if it does not already exist
LDIR=results/log/bwa2_map_array
ODIR=results/mapped2

mkdir -p $LDIR $ODIR

# get shell variables for this array task:
COMM=$(./scripts/line-assign.sh $SLURM_ARRAY_TASK_ID data/sample-array-info.tsv)
eval $COMM


# run bwa mem on the input and pipe it to samtools to sort it

bwa-mem2 mem -R "@RG\tID:${sample}.${library}.${flowcell}.${lane}\tSM:${sample}\tLB:${library}\tBC:${barcode}\tPU:\tID:${sample}.${library}.${flowcell}.${lane}" \
  data/genome/genome.fasta \
  results/trimmed2/${sample}_R1.fq.gz results/trimmed2/${sample}_R2.fq.gz 2> $LDIR/bwa_mem2_${sample}.log | \
(
  samtools view -u - | \
  samtools sort -o $ODIR/${sample}.bam
) 2> $LDIR/samtools_${sample}.log
