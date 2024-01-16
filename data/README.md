# Data

We have a small amount of sequencing data here.  The original data were used
in [Thompson et al. (2020)](https://www.science.org/doi/10.1126/science.aba9059).
What is available here is a subset.  

First, I restricted focus to 8 fall-run Chinook salmon and 8 spring-run Chinook
salmon all from the Trinity River Hatchery.

Second, rather than try to use reads from all over the genome, I selected
only those reads that overlap a certain 20 bp of the genome across 4 different
chromosomes---4 megabases on chromosomes 26, 27 and 29, and 8 megabases on chromosome
28.  Those 8 megabases include the GREB1L/ROCK1 region---i.e. the "region of 
strongest association" with run-timing.

The genomic coordinates of those regions are:
```
NC_037122.1:5000000-9000000 NC_037123.1:10000000-14000000 NC_037124.1:8000000-16000000 NC_037125.1:20000000-24000000
```

I additionally added sequence that mapped to about 45 small unmapped scaffolds (because
for most non-model organisms, you reference genome will still have a lot of
unmapped scaffolds!).  Look in the code below (definition of `SCAFFS` to see
what they are).

## Contents

  - `fastqs` holds the sequencing data (gzipped fastq files)
  - `genome` has a single file, `genome.fasta` that is the "reference genome" that
    has only the regions above as well the scaffolds.
  - `config` is a directory that holds configuration information for running these
    data through Eric's [mega-non-model-wgs-snakeflow](https://github.com/eriqande/mega-non-model-wgs-snakeflow)
    Snakemake workflow.
  - `meta.tsv` is a small TAB-separated file with some information about the samples
    themselves (i.e. spring or fall run, etc.)
    

## Steps taken to make the data

Here is a quick synopsis of what I did to make these data sets---as a shell script.
It is a bit wacky trying to make singleton pairs and add PCR duplicates back in there
(because the BAM files I have had the dupes removed).  A lot of the tools throw
errors if things aren't all just right (like the same sequence identifier in
a file that MarkDuplicates is crunching will cause an error...).  So, there is a
bit of gnarly in here.  
```sh

# get the sample names
SAMPLES="
DPCh_plate1_F11_S71
DPCh_plate1_B12_S24
DPCh_plate1_F12_S72
DPCh_plate1_G12_S84
DPCh_plate1_B11_S23
DPCh_plate1_C11_S35
DPCh_plate1_C12_S36
DPCh_plate1_D11_S47
DPCh_plate1_F10_S70
DPCh_plate1_D09_S45
DPCh_plate1_H10_S94
DPCh_plate1_G10_S82
DPCh_plate1_H09_S93
DPCh_plate1_C10_S34
DPCh_plate1_B10_S22
DPCh_plate1_G09_S81
"

# get the regions in a shell variable
REGIONS="NC_037122.1:5000000-9000000 NC_037123.1:10000000-14000000 NC_037124.1:8000000-16000000 NC_037125.1:20000000-24000000"


# note that we are also going to want to get some scaffolds
SCAFFS="
NW_020134169.1
NW_020134170.1
NW_020134171.1
NW_020134172.1
NW_020134173.1
NW_020134174.1
NW_020134175.1
NW_020134176.1
NW_020134177.1
NW_020134178.1
NW_020134179.1
NW_020134180.1
NW_020134181.1
NW_020134182.1
NW_020134183.1
NW_020134184.1
NW_020134185.1
NW_020134186.1
NW_020134187.1
NW_020134188.1
NW_020134189.1
NW_020134190.1
NW_020134191.1
NW_020134192.1
NW_020134193.1
NW_020134194.1
NW_020134195.1
NW_020134196.1
NW_020134197.1
NW_020134198.1
NW_020134199.1
NW_020134200.1
NW_020134201.1
NW_020134202.1
NW_020134203.1
NW_020134204.1
NW_020134205.1
NW_020134206.1
NW_020134207.1
NW_020134208.1
NW_020134209.1
NW_020134210.1
NW_020134211.1
NW_020134212.1
NW_020134213.1
NW_020134214.1
NW_020134215.1
NW_020134216.1
NW_020134217.1
NW_020134218.1
"

# use rclone to download the BAM files and the indexes
rclone copy  --drive-shared-with-me gdrive-rclone:chinook_WGS_processed  data $(for i in  $SAMPLES; do echo -n "--include ${i}.rmdup.bam --include ${i}.rmdup.bam.bai  "; done)



# use samtools to pull out just the regions (and scaffolds) we want and turn those into fastqs.
# Note that things have to be name-ordered for samtools fastq to work properly.
# We capture the singletons in there, as well.  
for i in $SAMPLES; do
  samtools view -u  data/$i.rmdup.bam $REGIONS $SCAFFS | \
    samtools sort -n - | \
    samtools fastq -1 ${i}_Read1.fq  -2 ${i}_Read2.fq \
     -0 ${i}_Other.fq -s ${i}_Single.fq -N - ;
  echo $i
done


# Now, we do have a few singletons in each.  We want to work those back into
# the fastqs as things that will be singletons.  To do this, we just grab
# the appropriate number of random sequences from chromosome 1, and then rename
# those to look like the second in a pair of the Single sequences.  We just do this
# with some Unix and awk.
echo "Pairing the singletons up with Chr1 sequences"
n=0
for i in $SAMPLES; do
  NL=$(wc  ${i}_Single.fq | awk '{print $1}');  # number of lines in singleton fastq
  n=$((n + 1))
  # get a random assortment of sequences, starting from n,000,000 each time
  samtools view -b  data/$i.rmdup.bam NC_037097.1:${n}000000- | samtools fastq | head -n $NL > tmp-$i;
  
  # paste those two files together and alternate as to which sequence is
  # in the first column and which is in the second.  This just switches up
  # the seq and qual lines for every other pair. Then we run it all back through
  # awk and change the read names so they have a /1 or /2 as appropriate
  paste ${i}_Single.fq tmp-$i | awk '
    BEGIN {OFS="\t"} 
    NR % 2 == 0 { if(int((NR - 2) / 4) % 2 == 0) print $1, $2; else print $2, $1; next} 
    {print}
  ' |
    awk '
      NR%4 == 1 {a = $1; b = $1; sub(/\/2/, "/1", a);  sub(/\/1/, "/2", b); printf("%s\t%s\n", a, b); next }
      {print}
    ' > pasted-$i
    
    # finally, break those into two separate fastqs
    cut -f1 pasted-$i > ${i}_S1.fq
    cut -f2 pasted-$i > ${i}_S2.fq
    
    echo $i;
done



# Now, we want to make some sequences duplicates.  I will do the
# same number of duplicates in each file: 5,000 of them from 
# from the properly paired reads, and 500 from the Single file.


# For the 5000 properly paired ones, we will just pull out the
# first 5000 pairs (20,000 lines) from each of the Read1 and Read2
# files, and then we will swap out the read names from randomly
# grabbed sequences from Chromosome 2
echo "Making pseudo-duplicates of the properly paired reads "
n=0
for i in $SAMPLES; do
  NL=20000 # number of lines in singleton fastq
  n=$((n + 2))
  # get a random assortment of sequences from 2 megabases of chrom 5, starting from n,000,000 each time. We get the
  # Read1's from those and then just take the first 20000 lines.
  samtools view -b  data/$i.rmdup.bam NC_037101.1:${n}000000-$((n+2))000000 | samtools fastq -1 pd-1-${i}.fq -2 pd-2-${i}.fq; 
  cat pd-1-${i}.fq| head -n $NL |
    awk 'NR%4 == 1 {print $0 "/1"; next} {printf("\n");}'  > pdup-names-$i;
    
    
  # get the first NL lines from each of Read1 and Read2
  head -n $NL ${i}_Read1.fq > pdup-seqs-R1-$i
  head -n $NL ${i}_Read2.fq > pdup-seqs-R2-$i
  
  # now we paste the pdup-names onto those and grab the names, setting /1 and /2 as appropriate
  paste pdup-seqs-R1-$i pdup-names-$i | awk '
    NR%4==1 {a=$2; sub(/\/2/, "/1", a); print a; next}
    {print $1}  # gotta have the $1, otherwise it prints tabs at the ends of lines!
  ' > ${i}_PD1.fq
  
  paste pdup-seqs-R2-$i pdup-names-$i | awk '
    NR%4==1 {a=$2; sub(/\/1/, "/2", a); print a; next}
    {print $1}
  ' > ${i}_PD2.fq
  
  echo $i

done


# and here is the ultimate silly hack.  One of the indivs does
# not seem to have enough reads, so there are missing seq-is in the PD1 and
# PD2 file for DPCh_plate1_H09_S93 after about 4377 seqs.  So, we are
# going to just take the first 4370.  Ha
head -n 17480 DPCh_plate1_H09_S93_PD1.fq > tmp
mv tmp DPCh_plate1_H09_S93_PD1.fq

head -n 17480 DPCh_plate1_H09_S93_PD2.fq > tmp
mv tmp DPCh_plate1_H09_S93_PD2.fq


# For the 500 singleton duplicates, we will take the first 500 sequences
# from the Single files, and we will pair them up with 500 random
# sequences from Chr3, and we will name them all according to
# the names from Chr3.
echo "Making pseudo-duplicates of the singleton reads "
n=0
for i in $SAMPLES; do
  NL=2000 # number of lines in singleton fastq
  n=$((n + 1))
  # get a random assortment of sequences from chrom 3, starting from n,000,000 each time
  samtools view -b  data/$i.rmdup.bam NC_037099.1:${n}000000-$((n+1))000000 | samtools fastq -1 sd-1-${i}.fq -2 sd-2-${i}.f;
    cat sd-1-${i}.fq | head -n $NL | awk 'NR%4 == 1 {print $0 "/1"; next} {print}' > sdup-chr3-$i;
    
  # get the first 2000 lines from the Single reads
  head -n $NL ${i}_Single.fq > sdup-seqs-$i
  
  
  # paste those two files together and alternate as to which sequence is
  # in the first column and which is in the second.  This just switches up
  # the seq and qual lines for every other pair. Then we run it all back through
  # awk and change the read names so they have a /1 or /2 as appropriate, retaining
  # the read names from chr3, in this case.
  paste sdup-seqs-$i sdup-chr3-$i | awk '
    BEGIN {OFS="\t"} 
    NR % 2 == 0 { if(int((NR - 2) / 4) % 2 == 0) print $1, $2; else print $2, $1; next} 
    {print}
  ' |
    awk '
      NR%4 == 1 {a = $2; b = $2; sub(/\/2/, "/1", a);  sub(/\/1/, "/2", b); printf("%s\t%s\n", a, b); next }
      {print}
    ' > pasted-single-dupes-$i
    
  # finally, break those into two separate fastqs
  cut -f1 pasted-single-dupes-$i > ${i}_SD1.fq
  cut -f2 pasted-single-dupes-$i > ${i}_SD2.fq

  echo $i
done



# Now we catenate together the paired reads, the singletons, the pseudo-dupe paired
# reads and the pseudo-dupe singleton reads.
for i in $SAMPLES; do 
  cat ${i}_Read1.fq ${i}_S1.fq ${i}_PD1.fq ${i}_SD1.fq | gzip -c -9 > ${i}_R1.fq.gz 
  cat ${i}_Read2.fq ${i}_S2.fq ${i}_PD2.fq ${i}_SD2.fq | gzip -c -9 > ${i}_R2.fq.gz 
  echo $i
done

# put those all somewhere special
mkdir fastqs
mv *.gz fastqs/

# that is it for the fastqs.

# Now, for the genome that we will use, we will rip it all out with samtools
# faidx, and then rename the chromosomes to something shorter.
GENOME=/Users/eriq/Documents/git-repos/thompson-et-al-2020-chinook-salmon-migration-timing/genome/Otsh_v1.0_genomic.fna
samtools faidx $GENOME $REGIONS $SCAFFS | sed '
  s/NC_037122\.1:5000000-9000000/NC_037122.1f5t9/g;
  s/NC_037123\.1:10000000-14000000/NC_037123.1f10t14/g;
  s/NC_037124\.1:8000000-16000000/NC_037124.1f8t16/g;
  s/NC_037125\.1:20000000-24000000/NC_037125.1f20t24/g;
' > genome.fasta


```
