#!/bin/bash

#SBATCH --partition="Reincarnation(Priority)"
#SBATCH --job-name=fastp
#SBATCH --time=2:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=sam.rosenbaum@umontana.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=80G

eval "$(conda  shell.bash hook)"
conda activate fastp

ls /hellgate/home/sr221061/con-gen-csu/data/fastqs | cut -d '_' -f 1-4 | sort -u > sample_names.txt

JOBS_FILE=sample_names.txt
SAMPLES=$(cat ${JOBS_FILE})

for S in ${SAMPLES};
do

fastp -i /hellgate/home/sr221061/con-gen-csu/data/fastqs/${S}_R1.fq.gz \
      -o /hellgate/home/sr221061/con-gen-csu/results/trimmed/${S}_R1_trimmed.fq.gz \
      -I /hellgate/home/sr221061/con-gen-csu/data/fastqs/${S}_R2.fq.gz \
      -O /hellgate/home/sr221061/con-gen-csu/results/trimmed/${S}_R2_trimmed.fq.gz \
      -h /hellgate/home/sr221061/con-gen-csu/results/qc/fastp/${S}.html \
      -j /hellgate/home/sr221061/con-gen-csu/results/qc/fastp/${S}.html.json \
      --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
      --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
      --cut_right --cut_window_size 4
done

sha1sum /hellgate/home/sr221061/con-gen-csu/results/trimmed/*.gz > /hellgate/home/sr221061/con-gen-csu/assignments/004-iteration-and-fastp/sha1_fastqs.txt
