#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --output=my_output_%A_%a
#SBATCH --error=my_error_%A_%a
#SBATCH --array=1-10

ODIR=results/array_example
mkdir -p $ODIR

(
  echo "The SLURM_ARRAY_JOB_ID is : $SLURM_ARRAY_JOB_ID"
  echo "The SLURM_ARRAY_TASK_ID is: $SLURM_ARRAY_TASK_ID"
  echo "The SLURM_JOB_ID is: $SLURM_JOB_ID"
  echo
  echo "You can refer to this individual SLURM array task as: ${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID}"
  echo
) > $ODIR/output_$SLURM_ARRAY_TASK_ID.txt

sleep 20

