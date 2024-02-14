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

ls data/fastqs | cut -d '_' -f 1-4 | sort -u > sample_names.txt

JOBS_FILE=sample_names.txt
SAMPLES=$(cat ${JOBS_FILE})

for S in ${SAMPLES};
do

fastp -i data/fastqs/${S}_R1.fq.gz \
      -o results/trimmed/${S}_R1_trimmed.fq.gz \
      -I data/fastqs/${S}_R2.fq.gz \
      -O results/trimmed/${S}_R2_trimmed.fq.gz \
      -h results/qc/fastp/${S}.html \
      -j results/qc/fastp/${S}.html.json \
      --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
      --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
      --cut_right --cut_window_size 4
done

sha1sum results/trimmed/*.gz > sha1_fastqs.txt



