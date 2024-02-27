# Simple Snakemake Maneuvers Homework

This homework should not be terribly difficult and it does not require
any hefty computation.  It is designed primarily to make sure you have
a Snakemake environment installed and that you are starting to understand
the logic of how Snakemake works.  You will mostly be doing dry-runs of
Snakemake to ensure that you have things set up correctly.


In the directory `assignments/006-simple-snakemake-maneuvers` (sync your fork
and pull main to your local clone if you don't yet see it) there is a copy
of the Snakefile (and the associated conda environments) that we played with in
class. I want you to modify this Snakefile to process our familiar `con-gen-csu`
data set of 16 Chinook salmon across the four large chromosomes in the data, using
the reference genome in `data/genome/genome.fasta`.  

The outputs should go in the `results` directory in the top level of the repo.
While the indexes for the genome (created by bwa-mem2) should be written alongside
the reference genome in `data/genome`
In fact, right now you should simply delete the results directory that is
currently in the top level of your clone of your fork of the repo, and also
clean out any generated files that might be in the resources directory:
```sh
# from top level of con-gen-csu repo:
rm -r results
rm data/genome/genome.fasta.*
```


You will invoke the Snakefile in "dry-run" mode from the top level of the con-gen-csu repo with:
```sh
snakemake -np -s assignments/006-simple-snakemake-maneuvers/Snakefile results/vcf/all.vcf.gz 
```

You must make (relatively minor) edits to the Snakefile, so that this will show a
dry run in which variants would get called for all the samples:
```
DPCh_plate1_B10_S22
DPCh_plate1_B11_S23
DPCh_plate1_B12_S24
DPCh_plate1_C10_S34
DPCh_plate1_C11_S35
DPCh_plate1_C12_S36
DPCh_plate1_D09_S45
DPCh_plate1_D11_S47
DPCh_plate1_F10_S70
DPCh_plate1_F11_S71
DPCh_plate1_F12_S72
DPCh_plate1_G09_S81
DPCh_plate1_G10_S82
DPCh_plate1_G12_S84
DPCh_plate1_H09_S93
DPCh_plate1_H10_S94
```

And over the four large chromosomes in the reference genome:
```
NC_037122.1f5t9
NC_037123.1f10t14
NC_037124.1f8t16
NC_037125.1f20t24
```

When you get the dry-run to work, it should produce a job stats summary that looks like
this:
```
Job stats:
job                             count
----------------------------  -------
bwa_index                           1
concat_vcfs                         1
genome_dict                         1
genome_faidx                        1
import_genomics_db_by_chromo        4
make_gvcfs_by_chromo               64
map_reads                          16
mark_duplicates                    16
trim_reads                         16
vcf_from_gdb_by_chromo              4
total                             124
```

The only file you should need to change to make this happen is the Snakefile.

When you have it working, then redirect the Snakemake output like this:
```sh
snakemake -np -s assignments/006-simple-snakemake-maneuvers/Snakefile results/vcf/all.vcf.gz > assignments/006-simple-snakemake-maneuvers/snake.stdout
```

Then, create a new branch called `006-simple-snake` and push it up to a remote branch of
the same name:
```sh
git checkout -b 006-simple-snake
git push -u origin 006-simple-snake
```

The commit the following files:
```
assignments/006-simple-snakemake-maneuvers/Snakefile
assignments/006-simple-snakemake-maneuvers/snake.stdout
```
to that branch, push those commits up to your fork and send me a pull request.

