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



### Video links

Although this course takes place in person, there will be zoom links for several remote
students to connect.  If you are in Fort Collins, you are expected to be in class, in
person.  The links are primarily available for our remote students; however in-person students
can take advantage of them on a limited basis, for example, if they are isolating with COVID,
if the roads are incredibly ice and treacherous, etc.

For the remote sessions, we will use Google Meetings. You can log in
to [https://meet.google.com/vwh-xbhs-tzi](https://meet.google.com/vwh-xbhs-tzi) during class meeting times and/or office hours if you can't be here
in person.





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
be assessed on that with short quizzes) and to  contribute to discussion and participation in the course,
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



## Individual Projects

The purpose of the individual projects is to allow the students to use
many of the skills learned, and to gain experience in preparing a reproducible
research project.  Some students likely already have their own data sets
that they are working on, but we expect that many will not.  We will be
able to provide data and interesting questions to tackle from our own research.
Additionally, we will encourage students to take on related projects so that
they can work together on different parts of a single question.


## Detailed Weekly Schedule

### Tuesday, January 16, 2024

Today there was a campus closure due to weather, so students will have
a little more self-guided prep to do for the next class.

### Thursday, January 18, 2024

RStudio Projects, RMarkdown, git/GitHub, and connecting to Alpine.

#### Prep: (Always do "prep" before class. All prep materials are subject to quizzes)
<details>
  <summary>Click here for full details</summary>
RStudio and git preps:

- Ensure that you have a recent version of R, and the latest version of [RStudio](https://posit.co/download/rstudio-desktop/)
  installed on your laptop.
- Make sure that you have `git` installed on your laptop.  Good instructions (possibly a little
  dated) can be found in Jenny Bryan's [HappyGitWithR](https://happygitwithr.com/install-git#install-git) web book.
- "Introduce Yourself To Git" following the directions [here](https://happygitwithr.com/hello-git#hello-git)
- If you don't already have one, get yourself an account on [GitHub](https://github.com/), and once you have successfully
  logged onto GitHub in your web browser, send your email account name to 
  [eriq@rams.colostate.edu](mailto:eriq@rams.colostate.edu).
- Download the [RStudio IDE Cheatsheet](https://rstudio.github.io/cheatsheets/rstudio-ide.pdf) and study it.
  *Especially the "Version Control" section*

  
Rmarkdown preps:

- Download the [RMarkdown cheatsheet](https://rstudio.github.io/cheatsheets/rmarkdown.pdf) and study it.
- In R, do `install.packages("bookdown")`  That will trigger the download of a lot of other packages
  that are useful to have.

Connecting to Alpine (or another cluster) preps:

- Mac Users, download and install [iTerm2](https://iterm2.com/).  This is a free replacment for the standard mac "Terminal"
  application, and it is very good.
- PC Users, you might want to consider downloading and installing [MobaXTerm](https://mobaxterm.mobatek.net/) to use as a terminal
  client (for connecting to Alpine, etc.)
</details> 

#### In class: (Tentative schedule of how class time will go down)

<details>
  <summary>Click here for full details</summary>
Introductions:

- Introductions of the course and students
- Brief overview of tentative syllabus
- Example data (pre-introduction)
  
RStudio/GitHub:

- Rstudio and Git Configs:
    * [Some Slides](https://eriqande.github.io/CSU-con-gen-comp-2020/slides-and-things/setting-up-your-system.html)
- Check git/GitHub connectivity, etc
    * [Some slides about git and Github](https://eriqande.github.io/CSU-con-gen-comp-2020/slides-and-things/git-and-github.html)
- Create 2 RStudio projects, commit them and push them
- Create a con-gen-csu-githubname project and repo and push that up
  
  
- RMarkdown. Make sure everyone is compiling the
  template.
    * Get the repo with: `git clone https://github.com/eriqande/bioinf-rmarkdown-introduction` 
- Introduce the assignment.
  
  
- Make sure everyone can log on to Alpine (or their respective Unix cluster)
    * [Getting and account on Alpine for CSU students](https://it.colostate.edu/research-computing-and-cyberinfrastructure/compute/get-started-with-alpine/)
    * Logging in if you already have an account: go the page above and find the section on "Remote Login"
</details>

#### Assignment due Monday January 22, at 6 PM

<details>
  <summary>Click here for full details</summary>
**This will be described in class, and is due by Monday, January 22nd at 6 PM.**

_For a video demonstration of the execution of these steps (and a better
explanation of how to Push commits to GitHub from RStudio) you can check out this
[11 minute video on how to complete and turn in your "About Me" assignment](https://youtu.be/9Y5S-terl-I)_

1. Create an Rstudio project on your laptop called `con-gen-csu-githubusername` where you replace `githubusername` with your actual GitHub name/handle.
2. Create an empty GitHub repository named `con-gen-csu-githubusername` and push the contents of your Rstudio project to it.
1. Clone the repository [https://github.com/eriqande/bioinf-rmarkdown-introduction](https://github.com/eriqande/bioinf-rmarkdown-introduction), open the RStudio project and make sure you can knit the `about-me-example.Rmd` file, at least to HTML.
2. Try knitting that to PDF or DOCX format as well.
3. Copy the `about-me.Rmd` template file and the file `references.bib` from the repo to a directory called `001-about-me` in your own
  `con-gen-csu-githubname` project, and edit it to provide information about yourself, and 
  to practice using RMarkdown.
4. When you are done editing it and you have knitted it:
    - email the `about-me.html` file to [eriq@rams.colostate.edu](eriq@rams.colostate.edu) with subject line. "About me!"
    - commit your `about-me.Rmd` to your con-gen-csu-githubname repo and push it up to GitHub.  
</details>



### Tuesday, January 23, 2024

Logging into Alpine; Git on Alpine; Basic Unix Stuff;

#### Prep
<details>
  <summary>Click here for full details</summary>
- Read from the eca-bioinf-handbook from the beginning of [Chapter 4](https://eriqande.github.io/eca-bioinf-handbook/essential-unixlinux-terminal-knowledge.html#essential-unixlinux-terminal-knowledge)
up to and including [Handling, Manipulating, and Viewing files and streams](https://eriqande.github.io/eca-bioinf-handbook/essential-unixlinux-terminal-knowledge.html#handling-manipulating-and-viewing-files-and-streams)
</details>

#### In class: logging in to Alpine, forking on GitHub
<details>
  <summary>Click here for full details</summary>

##### We will do a Quiz on the reading!

##### Log into Alpine and get git running and talking to GitHub

_For a video demonstration of the execution of these steps see
the [9 minute video about logging into Alpine and getting setup with git and some SSH keys for GitHub](https://youtu.be/H5zt9h2vH4w)_.

- Logging into Alpine
```sh
ssh CSUeid@colostate.edu@login11.rc.colorado.edu

# password is eidpassword,push
# (you have to add ,push to the end, then use the DUO app)
```
- Setting up `git` on Alpine:
```sh
git config --global user.name "Your Name"
git config --global user.email "your.email@your.email.com"
git config --global core.editor nano
```
- setting up SSH key pair on Alpine for GitHub
```
# if you already have ~/.ssh/id_ed25519 and  ~/.ssh/id_ed25519.pub
# then you don't have to set these up, just go to the next step.
# If not, then it is simple, do this:

ssh-keygen -t ed25519 -C "FOR GITHUB"

# when prompted, save in default location and leave password
# blank by just hitting return.
```
- Copy the public key and put it on GitHub
```sh
cat ~/.ssh/id_ed25519.pub
# then copy it and go to GitHub->Settings->SSH and GPG keys
# and add the Key.
```
- Add a command to your `~/.bashrc` to wake up the ssh daemon
on the CURC.  Do `nano ~/.bashrc` and add the following lines to
the file and then save it:
```sh
alias gitup='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_ed25519'
```
- Source your `~/.bashrc` and then run the gitup command.
```sh
source ~/.bashrc
gitup
```
- Test your connection to GitHub:
```sh
ssh -T git@github.com
```

##### Fork the class repository and clone it to Alpine

_For a video demonstration of these steps, check out the
[6.5 minute video on forking and cloning the class repository](https://youtu.be/6bZEt7jN5D0)_

Forking is the process of making a clone of somebody else's
repository on GitHub in your own GitHub account.  We will
use this to deploy homework, moving forward.

The steps here are:

- Make sure you are signed into GitHub on your browser, then navigate to our
course repository at [https://github.com/eriqande/con-gen-csu](https://github.com/eriqande/con-gen-csu).

- Find the "Fork" button in the upper right and click it.  When this is done with the
forking process, your browser should be at your own copy of the repository.

- cd to  your `projects` directory.  This is
very important!  Do the following, but replace `CSUeid` with your CSU eid.
```sh
cd /projects/CSUeid@colostate.edu/
```

- Once again verify that you are in your projects directory:
```sh
pwd
```

- Clone your fork of the `con-gen-csu` repository to Alpine: Verify your browser is
at your own _fork_ of the repository, then, from the
green "Code" button, get the SSH address for the repository and put it after
`git clone` in the terminal.  That will look like:
```sh
git clone git@github.com:YourGitHubHandle/con-gen-csu.git
```
with `YourGitHubHandle` actually being your true GitHub handle.
</details>


#### Assignment due Friday, Jan. 26 at 5 PM

<details>
  <summary>Click here for full details</summary>
  
**This is due by 5 PM Friday, January 26, 2024**


Here are the steps to start working on your homework. We will go over
these in class.  Don't start doing them until we have discussed it
in class.

_Here is a video that explains all the steps below: [Video about running two clones of your repo and editing the homework file in RStudio, while doing the Unix commands on the cluster](https://youtu.be/Bjj9gkUYtPU)._

- Sync your fork of the course repository on GitHub with any changes
  I have made on the original
- Pull down any changes to the copy of your fork of the class repo that
  is on Alpine in your projects directory.
```sh
git pull origin main
# if that doesn't work you might need to do:
source ~/.bashrc
gitup
# and then try again
```
- You will be working on the command line on Alpine to test things
  out, but I think it might be easier to edit your homework files using
  RStudio.  Also, doing this will help you get comfortable with having
  two separate clones of a repo---something that I end up doing quite a
  bit. So, I will walk you through that in the following.
- Clone your fork of the class repo onto your laptop and open it with
  RStudio.
- Copy the file `002-unix-intro/unix-intro-TEMPLATE.sh` to     
  `002-unix-intro/unix-intro.sh`.  The latter is the file that you will
  be modifying and ultimately committing and pushing back to your fork.
  _Please be careful not to modify `002-unix-intro/unix-intro-TEMPLATE.sh`_.
- Then start working through the homework on RStudio, making changes to
  `002-unix-intro/unix-intro.sh`.  I will give an example of the first
  few on the video.

_Instructions for submitting the homework_

When you are done with everything, you are going to submit this by:

1. In RStudio, making a new branch on your laptop clone of your fork of the repository
called `unix-intro`.  
2. Committing the completed state of your homework to that branch.
3. Pushing that commit on that branch to GitHub
4. sending me a pull request from GitHub.

_That is a lot of weird steps, so here is a video to see what
I mean: [Submitting the unix-intro homework](https://youtu.be/M9SONNa611Q)._
</details>

### Thursday, January 25, 2024

Unix discussion period; installing mamba

#### Prep (reading)

<details>
  <summary>Click here for full details</summary>
- Read the rest of chapter 4 in the handbook from [Chapter 4.5 to the end](https://eriqande.github.io/eca-bioinf-handbook/essential-unixlinux-terminal-knowledge.html#unix-env) 
- It is recommended to read the introductory section of the handbook in [Section 7.6](https://eriqande.github.io/eca-bioinf-handbook/working-on-remote-servers.html#installing-software-on-an-hpcc).
</details>

#### In class (installing mamba)

<details>
  <summary>Click here for full details</summary>
Here are the steps to install mamba on your Alpine account:

For a video of these steps, see: [Installing mamba via miniforge](https://youtu.be/3EuRRETTA5s)

1. Check to see if you have conda already. Just type `conda` at the command
line:
```sh
conda
```
if that returns help information, that you already have conda.
1. Check to see if you have mamba already:
```sh
mamba
```
If that returns help information, then you have mamba and there is not much to do.  If you have conda but not mamba, then things are a little more
complex.  Conda is quite slow, and you really need to have mamba, but
the cleanest way to do this is to entirely remove your conda installation.
This can have unforeseen consequences, so talk to eric about how to proceed.

If you have neither mamba nore conda, then proceed with installing mamba.
1. Get onto the compile node on Alpine after logging in:
```sh
module load slurm/alpine
acompile
```
1. Download mamba from miniforge. This can be done with a few
shell commands:
```sh
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh
```
2. During the installation procedure, you will be prompted a few times
for input.  
It is important to **NOT PUT THE miniforge3 DIRECTORY** in your home
directory (which is the default).  It should go in `/projects/csu_eID@colostate.edu/miniforge3`,
where you replace `csu_eID` with your actual CSU eid.

3. At the end it asks if you want to update your shell profile to automatically
activate conda.  You want to type `yes`.

4. Then logout of the `acompile` nodes by type `cntrl-d`.  Then logout of your
login session with `cntrl-d`.  

5. Finally, log back into alpine, and you should have conda/mamba.
</details>


#### Assignment due at beginning of class on Tuesday, Jan 30
<details>
  <summary>Click here for full details</summary>
  
**Due at the beginning of class on Tuesday January 30, 2024**

Complete
the questions in Eric's [captioned video of Illumina sequencing](https://eriqande.github.io/erics-captioned-vids/vids/illumina-sbs/).

These are questions you can see in the video, but they are in text format in the
course repo to make it easier to complete.

Note that the readings which are prep for the following class are very relevant
to these questions, so it is probably best to do them before or while watching
the video:

- [Chapters 16.1 through 16.3](https://eriqande.github.io/eca-bioinf-handbook/dna-sequences-and-sequencing.html#illumina-sequencing-by-synthesis) in the handbook.

- [Chapter 17.2 through 17.2.2, inclusive, then all of 17.3](https://eriqande.github.io/eca-bioinf-handbook/bioinformatic-file-formats.html#fastq) in the Handbook.

Homework Directions:

_For a video running through these steps,
see: [How to get and submit the Illumina sequencing homework](https://youtu.be/4tDOM5QcgbA)._ 

1. Sync your fork of the course repo on GitHub with the original course repo.
1. On your laptop clone of your fork, in RStudio, _make sure that you are on the main
branch_. Doing this might involve changing back to main from unix-intro.
1. Pull any changes from your fork  down to the main branch of your laptop clone of your fork.
1. Once that is done, make a new branch called `illumina-seq`, and switch to it.
2. Copy the file `assignments/003-illumina-sequencing-questions/illumina-seq-homework-TEMPLATE.md` to `assignments/003-illumina-sequencing-questions/illumina-seq-homework.md`
3. Add answers to `assignments/003-illumina-sequencing-questions/illumina-seq-homework.md` and save the file.
4. When you are done, commit `assignments/003-illumina-sequencing-questions/illumina-seq-homework.md` to
the `illumina-seq` branch.  
5. Push the `illumina-seq` branch back up to GitHub.
6. Send me a pull request for your changes on the `illumina-seq` branch.

</details>



### Tuesday, January 30, 2024

Sequencing technologies and FASTA and FASTQ format.

#### Prep (reading from bioinf handbook)
<details>
  <summary>Click here for full details</summary>
Read:  

- [Chapters 16.1 through 16.3](https://eriqande.github.io/eca-bioinf-handbook/dna-sequences-and-sequencing.html#illumina-sequencing-by-synthesis) in the handbook.

- [Chapter 17.2 through 17.2.2, inclusive, then all of 17.3](https://eriqande.github.io/eca-bioinf-handbook/bioinformatic-file-formats.html#fastq) in the Handbook.
</details>

### Thursday, February 1, 2024

Describing our course example data set and discussing trimming and batch effects

#### Prep: (read two scientific articles and a short thing about tmux)
<details>
  <summary>Click here for full details</summary>
Read: 

- [Thompson et al, 2020.  A complex phenotype in salmon controlled by a simple change in migratory timing. Science](https://www.science.org/doi/full/10.1126/science.aba9059)  (This is where our example data come from).
- [Lou and Therkildsen. 2021. Batch effects in population... Mol Ecol Res](https://onlinelibrary.wiley.com/doi/full/10.1111/1755-0998.13559)  (This is a classic paper on why you might want to trim your sequence data).
- [Handbook section 7.4, up through and including 7.4.1](https://eriqande.github.io/eca-bioinf-handbook/working-on-remote-servers.html#tmux). This
is just an avuncular overview of how tmux works. 
</details>

#### In class (Eric talks about Chinook and we discuss the Lou and Therkildsen paper)

<details>
  <summary>Click here for full details</summary>

- Start with a discussion of the starting point of branches, keeping
`main` synced to `main` and then branching off of `main`.
- Also, discuss Illumina Seq Homework #6
- I will present a little about the Chinook salmon data.
- We will discuss the batch effects paper.
- We might encourage the Mac users to start getting tmux integrated into iTerm.
They can do this by using the instructions in
[Handbook section 7.5](https://eriqande.github.io/eca-bioinf-handbook/working-on-remote-servers.html#tmux-for-mac-users), and following along with the video [Setting up tmux integration with iTerm2 to access Alpine or any other remote server](https://youtu.be/vL6swuC6IMU).

</details>

### Tuesday, February 6, 2024

#### Prep (read 3 academic articles and one software manual)

<details>
  <summary>Click here for full details</summary>
  
- Read [Bolger et al. 2014](https://academic.oup.com/bioinformatics/article/30/15/2114/2390096), the academic paper about
Trimmomatic.
- ~~Read the [Trimmomatic manual](https://github.com/eriqande/con-gen-csu/blob/main/assignments/readings/TrimmomaticManual_V0.32.pdf) (Click the download link to get a proper PDF version).~~ (IF you already read this, then it is good to know, but is no longer required reading).
- Read [Chen et al. 2018](https://academic.oup.com/bioinformatics/article/34/17/i884/5093234), the academic paper about
the `fastp` aligner.
- Read the updated, 2023 paper about fastp: [Chen 2023](https://onlinelibrary.wiley.com/doi/10.1002/imt2.107)
- Read the manual for fastp that is the [README on their Github page](https://github.com/OpenGene/fastp?tab=readme-ov-file)

</details>

#### In class (team quiz; running fastp; using FileZilla; introduce idea of shell programming)

<details>
  <summary>Click here for full details</summary>

- Team quiz.
- Running fastp on some data on Alpine.  Instructions are below, and you can check out the short video, [Running fastp on one pair of fastq files on Alpine](https://youtu.be/GLVj1cycPtE).
  ```sh
    module load slurm/alpine
    srun --partition atesting -t 2:00:00 --pty /bin/bash

    # if you don't have a fastp environment already
    mamba create -n fastp -c bioconda  fastp

    conda activate fastp

    cd INTO_YOUR_CSU_CON_GEN_DIRECTORY
    
    mkdir -p results/trimmed results/qc/fastp
    fastp -i data/fastqs/DPCh_plate1_B10_S22_R1.fq.gz -I data/fastqs/DPCh_plate1_B10_S22_R2.fq.gz  \
          -o results/trimmed/DPCh_plate1_B10_S22_R1.fq.gz -O results/trimmed/DPCh_plate1_B10_S22_R2.fq.gz \
          -h results/qc/fastp/DPCh_plate1_B10_S22.html  -j results/qc/fastp/DPCh_plate1_B10_S22.json \
          --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --adapter_sequence_r2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
          --detect_adapter_for_pe \
           --cut_right --cut_right_window_size 4 --cut_right_mean_quality 20      
  ```
- Transferring files from the cluster to your laptop.  In order to
  view the html report from fastp, we can bring it to our laptop.  How?
  There are many ways, but one easy GUI way that is endorsed by CURC,
  [here](https://curc.readthedocs.io/en/latest/compute/data-transfer.html#filezilla)
  is to use FileZilla.  The directions to do so are at the link above, and
  I made a [short FileZilla video](https://youtu.be/mnCFtQ3-3Eg), that walks through these steps:
  ```sh
  # on alpine
  cd ~  # change to your home directory

  # make symbolic links to your projects and scratch directories
  # to make it easy to get to them from your home directory
  ln -s /projects/USERNAME projects
  ln -s /scratch/alpine/USERNAME scratch

  # Then, on your laptop, download and install FileZilla
  # and follow the steps on the CURC page.
  ```
  
- Let's think about what it would take to do this for every pair of fastq files
  (which will get us to thinking about shell scripting and more!).  
</details>

### Thursday, February 8, 2024

Shell programming.  

#### Prep (read some parts of the handbook)
<details>
  <summary>Click here for full details</summary>
- Read the eca-bioinf-handbook section from section [5.2](https://eriqande.github.io/eca-bioinf-handbook/shell-programming.html#the-structure-of-a-bash-script)
  through section 5.10, inclusive.
</details>

#### In Class (Working together through some notes/exercises)

<details>
  <summary>Click here for full details</summary>
  
- We will work together through the [Shell Programming section](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/shell-prog.html).
  For this to work well for you, you will need to sync the main branch of your fork (on the GitHub website), and then pull that down into the main
  branch of your clone on your cluster:
    ```sh
    git switch main
    git pull origin main
    ```
  After the shell programming "hands-on" we will talk a little about [Shell Scripts](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/scripts-and-functions.html)
</details>

#### Assignment due at beginning of class, Tuesday Feb. 13  (make a shell script to automate running fastp on multiple files)

<details>
  <summary>Click here for full details</summary>
  
This assignment is about making a shell script to automate running fastp on the multiple files in `data/fastqs` in the
course repository.  Detailed instructions for the assignment are in the [README for assignment 004](https://github.com/eriqande/con-gen-csu/tree/main/assignments/004-iteration-and-fastp).
And a short video showing all the steps (except actually doing the homework) is available [here](https://youtu.be/tcrymsK77UE).
</details>

### Tuesday, February 13, 2024

SLURM intro

#### Prep (reading about HPCCs and SLURM)

<details>
  <summary>Click here for full details</summary>
- Read about HPCCs and SLURM in the handbook. [Chapter 8, up through and including all of 8.2](https://eriqande.github.io/eca-bioinf-handbook/chap-HPCC.html)
</details>

#### In class (working through some SLURM informational commands)

<details>
  <summary>Click here for full details</summary>
- We will work together through the [SLURM Intro](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/slurm.html). This is
  about a cluster called SEDNA, but many of the principles are the same for Alpine---they both
  use SLURM.
</details>

### Thursday, February 15, 2024

SLURM: `sbatch` and slurm job arrays (applied to sequence alignment)

#### Prep (Read about read groups, with optional reading about the bwa algorithm)

<details>
  <summary>Click here for full details</summary>
- Read [Chapter 19](https://eriqande.github.io/eca-bioinf-handbook/alignment-of-sequence-data-to-a-reference-genome-and-associated-steps.html) of the handbook, up to, and including
  section 19.3.
- If you want to (i.e., if you are excited by mathematical notation) feel free to peruse some papers about `bwa`:
  + [BWA original paper](https://academic.oup.com/bioinformatics/article/25/14/1754/225615)
  + [BWA-mem Paper on Arxiv](https://arxiv.org/abs/1303.3997)
</details>

#### In class (A quiz, then a practical session on `sbatch`)

<details>
  <summary>Click here for full details</summary>
- Quiz: Sync your fork; navigate to assignments/quizzes/read-groups-and-bwa-quiz.md; edit the file to turn `- [ ]` into `- [x]` where appropriate; commit changes to a new branch called `read-groups-quiz`; send eric a pull request from that branch to `main`.
- We will be going through one section of the udpated NMFS workshop notes:
  + [Submitting jobs with sbatch](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/sbatch.html)
</details>  

### Tuesday, February 19, 2024

Dispatching jobs via slurm job arrays.

#### In class (Slurm Job Arrays!)

<details>
  <summary>Click here for full details</summary>
- [Slurm Job Arrays](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/slurm-arrays.html)
</details>

#### Assignment (Due Friday, Feb 23, 2024, at 5 PM)

<details>
  <summary>Click here for full details</summary>
- We have an assignment due Friday, Feb 23, 2024. The instructions for it are [here](https://github.com/eriqande/con-gen-csu/tree/main/assignments/005-slurm-and-bwa-mem2/README.md).  The
  instructions are not super explicit. This is a chance for everyone to go from a verbal description to the finished assignment.
</details>

### Thursday February 21, 2024

Alignment; SAM/BAM formats; samtools

#### Prep (read a couple sections)

<details>
  <summary>Click here for full details</summary>
- Read (and follow along with the computer if you are inclined) the entire [Alignments](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/bioinf-formats.html#sambamfiles)
  section (i.e., all of section 9.4).
- Read (and follow along with the computer if you are inclined) the entire [Processing alignment output with `samtools`](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/sequence-alignment.html#samtools)
  section (i.e., all of section 10.4).
</details>  

#### In class

<details>
  <summary>Click here for full details</summary>
- We will be going through the readings and discussing then to cement those ideas.
</details>


### Tuesday, Feb 27, 2024

Snakemake Concepts and Basics

#### Prep (read this before---or after, since I didn't post it til late---today's session)

- Read the first full section of the [snakemake overview chapter](https://eriqande.github.io/con-gen-csu/nmfs-bioinf/snake.html)

#### In Class (Running through a Snakemake example)

- This is all done in the form of quarto/revealjs [slides](https://eriqande.github.io/con-gen-csu/snake-slides.html#/section).

#### Assignment (Due Friday, March 1, 2024)

Simple editing of a Snakefile.

- The explanation of the assignment is in the [README](https://github.com/eriqande/con-gen-csu/blob/main/assignments/006-simple-snakemake-maneuvers/README.md) of the assignment directory.
