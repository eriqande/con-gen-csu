#!/bin/bash


(
  echo "(stdout) Running with Slurm Job ID: $SLURM_JOB_ID" 
  echo "(stdout) Note that we are running this thing through"
  echo "(stdout) the tee utility to try to unbuffer it."
  echo
) | tee simple-15.stdout

echo "(stderr) This line is being written to stderr" > /dev/stderr
echo "(stderr) Interestingly, stderr does not seem to get buffered." >> /dev/stderr


sleep 900

