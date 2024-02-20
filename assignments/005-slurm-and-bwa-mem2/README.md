# Homework: Trimming with `fastp`, indexing and mapping with bwa-mem2

The goal of this homework is to practice using `sbatch` to dispatch jobs.

You should make three different `sbatch` scripts.  Write and save them in this directory.

1. `trim_all.sh` is a script very much like [this one] from exercise 004.  But prepare
   it so that it can be launched with `sbatch`.  Let all the files get trimmed by this one script
   using a `for` loop within the script.  Write the trimmed fastq files to the
   directory `results/trimmed2`.

2. `index2.sh`.  Create the reference indexes needed to do mapping with
   [bwa-mem2](https://github.com/bwa-mem2/bwa-mem2).  This is a faster version of `bwa mem` but should
   behave just the same.  (However you can't use the indexes from `bwa index` with it!).  Get it by
   using mamba.  See [this](https://anaconda.org/bioconda/bwa-mem2) for info about where it lives
   on Conda.  The `index2.sh` script must also be run using sbatch.

3. `map2.sh`.  Use a slurm job array with the `line-assign.sh` script, and the file
   at `data/sample-array-info.tsv` to have `sbatch` launch each mapping job separately, using bwa-mem2.
   The reads that you are mapping should be the trimmed ones in the `results/trimmed2` directory, and the
   resulting mapped and sorted bam files should be placed in `results/mapped2`.


Then record the sbatch command lines you used to launch these scripts from the command line in a file called `sbatchy.txt`.


