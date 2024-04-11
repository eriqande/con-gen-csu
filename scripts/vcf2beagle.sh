
if [ $# != 1 ]; then
    echo "Error! Need to supply vcf, bcf, or vcf.gz file."
    echo
    echo "Syntax:"
    echo "  vcf2beagle  File.bcf "
    exit 1
fi


file=$1

(
    bcftools query -l  $file; 
    bcftools view -m 2 -M 2 --types=snps  data/vcf/all-hard-filtered-miss-marked.bcf | \
    bcftools query -f '%CHROM:%POS\t%REF\t%ALT[\t%PL]\n' -
    ) | awk '

# this is a simple script that takes lines that are have comma-separated
# Phred-scaled genotype liklelihoods starting in column three, like:
#
# CHROMPOS  REF ALT 0,12,34 0,3,16
#
# (i.e., the CHROM and POS are smooshed into a single column.)
#
# and it turns each of those comma-containing columns into three columns
# of genotype likelihoods scaled to sum to one.

BEGIN {
    IFS="\t"
    base2int["A"] = 0
    base2int["C"] = 1
    base2int["G"] = 2
    base2int["T"] = 3
    printf("marker\tallele1\tallele2");
}

NF==1 {
    printf("\t%s\t%s\t%s", $1, $1, $1);
    next;
}

{   
    if(header_done == 0) {
        printf("\n");
        header_done = 1;
    }
    chrompos=$1
    gsub(/_/, "-", chrompos)
    gsub(/:/, "_", chrompos)
    printf("%s\t%s\t%s", chrompos, base2int[$2], base2int[$3]);
    for(i=4;i<=NF;i++) {
        if($i == ".") {  # deal with old VCFs that use a single dot here
            printf("\t%.6f\t%.6f\t%.6f", 1.0/3.0, 1.0/3.0, 1.0/3.0);
        }
        else {
            n=split($i,a,/,/);
            if(n!=3) {
                print "Not 3 GL values at ", $1  > "/dev/stderr";
                exit;
            }
            x=10^(-a[1]/10);
            y=10^(-a[2]/10);
            z=10^(-a[3]/10);
            sum=x+y+z;
            printf("\t%.6f\t%.6f\t%.6f",x/sum, y/sum,z/sum);
        }
    }
    printf("\n");
}
'