# Notes on Student Projects

* Antolin, Mike:
    - CWD in mule deer.  ddRAD with a new genome.


* Avila, Brian:
    - Renibacterium salmonanorum.  BKD in salonids.
    - Colo Rsal genotyped (sequenced?)
    - Put that dude in a tree.
    - Downloading other Rsal strain sequences.  **Are these short
      reads or are they assembled genoes?**
    - Copy number of msa and p22 genes

* Bortner, Robyn:
    - WGS of one BFF of mysterious provenance. **Hi or Lo coverage?**
    - Runs of homozygosity, overall heterozygosity, relationship to
      breeading program BFFs.  
    - Working mostly from the single reference and this.


* Clark, Noel:
    - High coverage WGS of Colorado Cutthroat.
    - Pipeline to get VCFs from 4 or 5 of them, and do PSMC
    - Diploid consensus sequence (bcftools vcf2fasta?)
    - Might need to slice the fastqs to parallelize mapping.
      fastp does that!

* Dixon, Mary:
    - Rhizosphere soil metagnomics.
    - Data from trials with corn (hi P and lo P).
    - Assess microbial community through genomics.
    - Tourmaline, a snakemake workflow.

* Durkee, Lily:
    - Colias butterfly populations from hi and lo elevation.
    - 5X WGS from HiSeq.
    - Fst and RDA
    - Find outliers.
    - (Look for inversions!)
    - Comparing ANGSD and VCF Fst would be good.
    - Phasing/imputing using Beagle 4.0 might be good.

Fox, Holden:
    - Making a genoscape for LOSH from lcWGS.
    - Mapping to a new chromosome level genome.
    - PCA and admixture.
    - Check out mega-non-model


Hammerlein, Meg:
    - Snakemake pipeline for exploring alternative splicing from PacBio data
    - Map to genome with STAR, then use LeafCutter.
    - Adaptation to high elevation.  (Y'all must know Jay Storz).


Kapit, Kira:
    - Male biased mutation in plants with long haploid life phases
    - Re-working a rotation project from Dan Sloane's lab, making it
      reproducible in a Snakemake workflow.
    - Awesome!
    - Will involve downloading from NCBI:  fasterq-dump.  I do have a
      workflow for that.


Lee, Zhi Mei Maria:
    - Pangolin! Download data from science paper and work on a workflow.
    - Some of the genomes are high-coverage, I think.  Maybe could
      do some PSMC types of things. 


Robertson, Erica:
    - Packaging up all the analyses she has already done in a Snakemake workflow
      for reproducibility to be able to submit it with the paper.  
    - Great!
    - Don't hesitate to use pre-existing workflows, too!


Rodriquez Acosta, Isabel:
    - Genetic diversity in a model organism.
    - Download some public data and then put together a workflow to process it
      and then assess genetic diversity. (heterozygosity, etc)
    - Might be interesting to compare different dog breeds against healthy wolves, etc.

Stroh, Katherine:
    - I can't find it!


Shanelle:
    - Genetic associations with BKD resistance.
    - ddRAD data.  Already processed?
    - Develop workflows for GWAS from it.


Rosenbaum, Sam:
    - Updating ADFG's wgs pipeline to use Snakemake. 
    - You will want to leave multiqc in there, because it is awesome.
    - GWAS between male and female samples.  Exciting! 


