# Homework: Trimming with `fastp`, indexing and mapping with bwa-mem2

The goal of this homework is to practice using `sbatch` to dispatch jobs, and to start thinking about
the process of putting together workflows with multiple steps.  By the end of Tuesday's class
you will have done all of the separate steps in this assignment, albeit using
`bwa` rather than `bwa-mem2` as required for this assignment.  So this assignment is
mostly about refamiliarizing yourself with those steps (while using a slightly different
program) and cementing what you have learned about `sbatch`.

In broad overview, we want to 1) trim each pair of fastqs in `data/fastqs` and put the
results in `results/trimmed2`, 2) index the reference genome in `data/genome/genome.fasta`
again _with `bwa-mem2`_, and 3) map the trimmed reads in `results/trimmed2`to the genome using 
`bwa-mem2`. 

You should make three different `sbatch` scripts.  Write and save them in this directory
(`assignments/005-slurm-and-bwa-mem2`).

1. `trim_all.sh` is a script very much like [this one] from exercise 004.  But prepare
   it so that it can be launched with `sbatch`.  Let all the files get trimmed by this one script
   using a `for` loop within the script.  Write the trimmed fastq files to the
   directory `results/trimmed2`.

2. `index2.sh`.  With this script, create the reference indexes needed to do mapping with
   [bwa-mem2](https://github.com/bwa-mem2/bwa-mem2).  This is a faster version of `bwa mem` but should
   behave just the same.  (However you can't use the indexes from `bwa index` with it!).  Get it by
   using mamba, because I don't think it is available as a module on Alpine.
   See [this](https://anaconda.org/bioconda/bwa-mem2) for info about where it lives
   on Conda.  The `index2.sh` script must also be run using sbatch.

3. `map2.sh`.  In this script, use a slurm job array with the `line-assign.sh` script, and the file
   at `data/sample-array-info.tsv` to have `sbatch` launch each mapping job separately, using bwa-mem2.
   The reads that you are mapping should be the trimmed ones in the `results/trimmed2` directory, and the
   resulting mapped and sorted bam files should be placed in `results/mapped2`.  The `sbatch` script
   [here](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/slurm-arrays.html#putting-it-all-together-a-read-mapping-job-array)
   is a template for this, but realize that it must be modified to use `bwa-mem2`, and also it must be
   modified to map the _trimmed_ reads, not just the raw fastqs.


Then record the command lines you used (that contain the `sbatch` command)
to launch these scripts from the command line in a file called `sbatchy.txt`.
This file is not a shell script that you run as such---it is, rather, just
a file that records the command lines you used, perhaps with some comments about them.
It should be clear that you will launch `trim_all.sh` and `index2.sh` first,
then, when both of those are done, you will launch `map2.sh`.  Each script should run from the top-level
directory of the repo (i.e. the `con-gen-csu` directory).

Finally, when it is all done, record the SHA1 hashes (with `sha1sum`) of all the output bam files that have
been created, and write those to the file `assignments/005-slurm-and-bwa-mem2/bam_sha1s.txt`

To complete this assignment, create a new branch called `005-trim-map2`, and commit to it the files that
you have created:

- `assignments/005-slurm-and-bwa-mem2/trim_all.sh`
- `assignments/005-slurm-and-bwa-mem2/index2.sh`
- `assignments/005-slurm-and-bwa-mem2/map2.sh`
- `assignments/005-slurm-and-bwa-mem2/sbatchy.txt`
- `assignments/005-slurm-and-bwa-mem2/bam_sha1s.txt`

Then push that to your fork of the course repo and send me a pull request from your branch
of your fork to the main branch of the upstream repo (`eriqande/con-gen-csu`).

