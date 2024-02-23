#!/bin/bash

for FILE in data/samtools_stats/*.gz; do
  gzip -cd $FILE | awk -v samp=$(basename ${FILE/_stats.tsv.gz/}) '
    $1=="SN" && /reads mapped:/ {rm = $4}
    $1=="SN" && /reads properly paired:/ {rpp = $5}
    $1=="SN" && /bases mapped \(cigar\):/ {bmc = $5}
    END {print samp, rm, rpp, bmc}
  '
done
