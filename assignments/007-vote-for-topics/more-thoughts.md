## BZ562: More thoughts on course topics

My choices were made based on analyses that I hope to do for my own research. I am working with lcWGS data (4x coverage) for populations of clouded sulfur butterfly in Colorado. My research aims focus on population structure among populations from a) high/low elevation sites and b) east/west of the continental divide, as well as identifying signals of adaptation to elevation and differences in genetic diversity between populations. I have sequenced individuals from 15 sites, 8 at high elevation (> 2000m) and 7 at low elevation (< 2000m), in a high-low paired design. Half of the paired sites are to the east of the continental divide, and the other half are located to the west. I have run a GATK pipeline on the data, and have a VCF file that I'm ready to play with! The PCA shows some population structure east and west of the continental divide. I am interested in doing the following analyses moving forward:

1. Genome-wide association study analyses, for example Manhattan plots, to look for SNPs associated with elevation and geographic location
2. SFS-based analyses: Fst and heterozygosity estimation among sites
3. Look for gene flow among sites and hyrbidization with a sister species (also sequenced) using NGSadmix, D-statistics, and EEMS analyses.
4. IBS-based analyses: Creating a neighbor-joining tree would allow me to evaluate relatedness between individuals and among sites. 
