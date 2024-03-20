# GATK Hard Filtering and Miss-Marking with Snakemake

This homework should not be terribly difficult and it should not require
any hefty computation, so long as you have the `results` from your previous
Snakemake runs available.  But, if something has gone wrong you might
need to regenerate those results, so leave some time for that.


Sync your fork and pull main to your local clone to get all the necessary
updates.  Then create a new branch **off of the main branch**
called `008-more-snake` for this work:
```sh
git checkout -b 008-more-snake
git push -u origin 008-more-snake
```

In `assignments/008-hard-filter-gatk-vcfs` you will find a 
Snakefile and some config
files, etc..  To make these, I copied `Snakefile2` from the `Snakemake-Example`
directory and I copied the envs and the config.yaml.

I then added to the config.yaml, and to Snakefile to add GATK-hard-filtering
**of indels** to the workflow.  Your task is to add GATK-hard-filtering
**for SNPs** to the workflow and then merge the filtered indels and snps
into a single VCF file for each chromosome, and then make sure that
the missing data in the result is specified by `./.` instead of `0/0`.  The filtering and merging should be done on a
chromosome-by-chromsome basis so it can be done in parallel. (All this will
be described in more detail below).


As it stands now, you will see if you do:
```sh
snakemake -p --use-conda  --rerun-triggers mtime -s assignments/008-hard-filter-gatk-vcfs/Snakefile
```
that snakemake will try to make four hard-filtered files of indels, because of how rule `all` is defined:
```python
rule all:
  input: 
    expand("results/hard_filtering/indels-filtered/{chromo}.vcf.gz", chromo=CHROMOS)

```



**YOUR MISSION:**

1.  Do the dry-run above.  If it tries to do more than about 8 jobs, you might have
    to re-run the earlier steps to get back to where you are.  Do that on Alpine.
2.  Modify the Snakefile to also create hard-filtered
    SNP files that will get written
    out to `"results/hard_filtering/snps-filtered/{chromo}.vcf.gz"`.  Follow the guidance in "Hard filter a cohort callset with VariantFiltration" on
    [this page](https://gatk.broadinstitute.org/hc/en-us/articles/360035531112--How-to-Filter-variants-either-with-VQSR-or-by-hard-filtering#2).
    Put the recommended filtering paramters in the `config.yaml`.  Just mimic how things are already done in the Snakefile for indels. You will have to add two
    new rules.
3.  Add a third rule to the Snakefile that will merge the variants in
    `"results/hard_filtering/indels-filtered/{chromo}.vcf.gz"` and 
    `"results/hard_filtering/snps-filtered/{chromo}.vcf.gz"`.  For this, use the
    `gatk MergeVcfs` tool.  The basic syntax is 
    ```sh
    gatk MergeVcfs -I input1.vcf.gz -I input2.vcf.gz -O output.vcf.gz
    ```
    Be sure to send stdout and stderr to the log, and make a benchmark file
    for the jobs.  The output should go to a file:
    `"results/hard_filtering/merged/{chromo}.vcf.gz"`
4.  Add a fourth rule that will operate on each `"results/hard_filtering/merged/{chromo}.vcf.gz"` to create a new file called
    `"results/missing-corrected/{chromo}.vcf.gz"`.  This rule should use
    bcftools from the bcftools conda environment to convert `0/0` where there
    are no reads or a flat likelihood to `./.`, add another tag with the
    number of samples missing data, and then make vcf.gz ouput and index it.  The 
    shell command for all that looks like this:
    ```sh
    (bcftools +setGT {input} -- -t q -n . -i 'FMT/DP=0 | (FMT/PL[:0]=0 & FMT/PL[:1]=0 & FMT/PL[:2]=0)' | \
        bcftools +fill-tags - -- -t 'NMISS=N_MISSING' | \
        bcftools view -Oz - > {output}; \
        bcftools index -t {output}) 2> {log}
    ```
5.  Modify the rule `concat_vcfs` so that it catenates the
    `"results/missing-corrected/{chromo}.vcf.gz"` files into
    `"results/vcf/all.vcf.gz"`
6.  Add a rule called `vcf_stats` that runs `bcftools stats` on
    `"results/vcf/all.vcf.gz"` and redirects stdout from that into
    the output file called `"results/vcf-stats/all.vcf.stats"`
7.  Finally, modify rule all to request `"results/vcf-stats/all.vcf.stats"`
    so that running snakemake on the Snakefile will trigger all the steps.
8.  Run snakemake on the Snakefile. Once you have it successfully running,
    and the run has finished, copy `results/vcf-stats/all.vcf.stats` to 
    `assignments/008-hard-filter-gatk-vcfs/all.vcf.stats` and then
    commit these files:
    - `assignments/008-hard-filter-gatk-vcfs/Snakefile`
    - `assignments/008-hard-filter-gatk-vcfs/config.yaml`
    - `assignments/008-hard-filter-gatk-vcfs/all.vcf.stats`
    to the `008-more-snake` branch, push those commits up to your fork and send me a pull request.

