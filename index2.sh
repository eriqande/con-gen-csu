#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=0:15:00
#SBATCH --mem=3G
#SBATCH --job-name=fastp_trim_all
#SBATCH --output=fastp_trim_all-%j.out
#SBATCH --error=fastp_trim_all-%j.err

####  Mike Antolin
####  005-005-slurm-and-bwa-mem2/index2.sh

####  Get ALPINE ready to SLURM
module load slurm/alpine

#### get a node
acompile -h

####  Make sure I'm in the right level
cd /projects/antolin@colostate.edu/con-gen-csu

##### Activate bwa-mem2 via source ~/.bashrc first
source ~/.bashrc
conda activate bwa-mem2

#### Make directories
mkdir -p results/log/bwa_mem2_index

#### run bwa mem2
bwa-mem2 index $1 > results/log/bwa_mem2_index/log.txt 2>&1


conda deactivate

#####  Command prompts to sbatchy.sh
#### (base) [antolin@colostate.edu@login11 con-gen-csu]$ sbatch assignments/005-slurm-and-bwa-mem2/index.sh

