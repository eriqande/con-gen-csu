# BZ562: Computational Approaches in Molecular Ecology

## Course Overview

Welcome to the course web page for Computational Approaches in Molecular Ecology.
The course was previously taught as an experimental course titled
Advanced Computing and Bioinformatics for Conservation Genomics.  We will be covering
computing, analysis and data-organization strategies for bioinformatics and analysis of high-throughput sequencing data for ecology, 
evolution, and conservation.

Modern high-throughput sequencing can provide extraordinary amounts of data, enabling researchers to tackle a wide range of questions and problems in ecology, evolution, conservation, and fisheries and wildlife management. Preparing and processing these data for use, however, requires multiple bioinformatic steps, and subsequent analysis of these large, complex data sets must rely on specialized computer programs.  Mastering these skills presents a high bar for students originating from outside of computer science and related fields. At present, in many institutions, such skills are typically learned from peers within experienced laboratories, or through a variety of workshops.  This course aims to comprehensively teach the computing and analytical skills necessary to use genomic data from high-throughput sequencing in the context of ecological research.  During the first 2/3 of the course, the focus is on aligning DNA sequence data and identifying variants across multiple individuals.  In the last 1/3 of the course we consider a series of case studies in how such data are used to make inference for applications in fisheries, wildlife, and conservation. Outside of the bioinformatic utilities that run within a Unix framework, emphasis is placed on using the R programming language and RStudio for project management and documentation. 

The proposed course
topics appear, by week, in the table below.  Each week of the course is structured as a different
chapter in the navigation panel on the left.  In order to figure out what we are doing in the course
each week, that will be the first place to check.  The week's objectives, readings, and exercises will
be listed there.

## Course schedule

The course schedule is:

- Tuesdays  10:00-10:50 in BIO 133.  Lecture
- Thursdays  10:00-11:50 in BIO 133. Discussion/Computer lab

Students are expected to bring a laptop to both lectures and labs

### Office Hours

Wednesdays 10:00-11:30 AM. 

Eric holds his office hours in the comfy chairs in the northeast corner of the 3rd floor of the Biology
Building.  



### Zoom links

Although this course takes place in person, there will be zoom links for several remote
students to connect.  If you are in Fort Collins, you are expected to be in class, in
person.  The links are primarily available for our remote students; however in-person students
can take advantage of them on a limited basis, for example, if they are isolating with COVID,
if the roads are incredibly ice and treacherous, etc.

The links are:

- GET LINK

- Get office hour link.



## Course Learning Objectives

Upon successful completion of the course, students will be able to:

1.	Organize and execute a complex bioinformatic data-analysis project in a manner that makes it easily understood and reproduced by others.
2.	Describe the main data formats used in genomic analysis, and know how to generate and manipulate them. 
3.	Work with a wide range of the bioinformatic tools available in the Unix environment and understand how to script these tools into pipelines for DNA sequence alignment, variant calling, and analysis.
4.	Understand how to break down complex genomic analysis projects into small, independent chunks and execute those using job arrays or a workflow management system on a high performance computing cluster.
5.	Perform a variety of computational analyses central to molecular ecology and conservation genetics.


## Assessment

Assessment will be based mostly on problem sets.  These will sometimes require
considerable time and thought, but they will be critical for solidifying the concepts
and procedures in the course. Students will also be undertaking individual projects
in which they apply the skills they have learned in the course to a data set
relevant in some way to their own research or to an interesting question relevant
to some existing data, after discussion with the instructors (see [below](#indproj)).
Finally, students are expected to actively engage in the reading material (and will
be assessed on that with short quizzes) abd to  contribute to discussion and participation in the course,
including (and most importantly) being helpful to one another in order to learn challenging material,
together, in a supportive environment.


Assessment Component | Percentage of Grade
---------------------|-------------------
Problem sets | 45%
Individual analysis projects | 30%
Quizzes  |  15%
Class participation | 10%



## Weekly Schedule 

The schedule is subject to change as the semester proceeds, but this
is what we are shooting for.



Week  |	Lecture  Component	| Lab Component
------|---------------------|---------------
1	 | Introduction, Rstudio Projects, Rmarkdown	 | git and GitHub, connecting to Alpine, srun interactive
2	 | Unix, directory structure, utilities	| Unix, .bashrc, tmux, file transfer
3	 | sequence data, alignment conventions, FASTA, SAM | 	conda/mamba, Samtools (faidx), bwa, map one individual
4	 | Shell scripting, regular expressions, sed and awk	| Shell scripting, bwa map everyone. Mark duplicates, samtools stats
5	 | High Performance Computing Clusters,  SLURM |	map, sort, compress, via sbatch and a job array
6	 | Snakemake | setting up Snakemake and running it on Alpine
7	 | Variant calling and genotype likelihoods, fundamental concepts | 	GATK, gVCFs, VCFs
8	 | Variant calling and genotype likelihoods	| using ANGSD
9	 | The Coalescent and the site-frequency spectrum | Exploring the coalescent  
10 | Estimating the SFS with lcWGS | ANGSD, winsfs
11 | Application of SFS: Fst in sliding windows	| doing SFS in sliding windows.
12 | PCA with lcWGS PCANGSD  | PCA with PCANGSD
13 | Genome wide association studies | ANGSD doAsso
14 | Inbreeding, runs of homozygosity	| bcftools roh



## Individual Projects {-#indproj}

The purpose of the individual projects is to allow the students to use
many of the skills learned, and to gain experience in preparing a reproducible
research project.  Some students likely already have their own data sets
that they are working on, but we expect that many will not.  We will be
able to provide data and interesting questions to tackle from our own research.
Additionally, we will encourage students to take on related projects so that
they can work together on different parts of a single question.

## Course GitHub Organization {-#ghorg}

A large part of this course will entail getting familiar with git and GitHub.
Homework assignments will be distributed via GitHub Classroom.  The resulting
repositories for all students can be found in the CSU-con-gen-bioinformatics-2020 GitHub Organization page
at [https://github.com/CSU-con-gen-bioinformatics-2020](https://github.com/CSU-con-gen-bioinformatics-2020).
