
#### The "Getting To Know Unix" Problem Set   ####

# In the following, are questions/exercises/problems labelled like:

#### Ex. X: 

# where X is a number indicating which exercise it is.

# The question itself is written as a comment. (i.e., it follows the #)
# I would like you to figure out what the answer is, by playing around
# in the terminal. Once you have figured out the correct command line,
# write it beneath the question. Then, print the output of your
# command line beneath five dashes.

# I provide an answer for questions 1 and 2 as examples of what we I mean.

# NOTE: In much of the following I use backticks (`) to delimit strings that
# you are supposed to type.  When typing these strings, please do not include
# the backticks!!


#### Ex. 1:`cd` to your home directory and print its path

cd ~
pwd

-----

/Users/eriq


#### Ex. 2:  Use echo to print `my name is xxxx` to stdout.  Where `xxxx` is 
####        replaced by your name

echo "my name is Eric"

------

my name is Eric

#### Ex. 3:  Now, for real print your name, as in Ex. 2, but put your name in there:

echo "My name is Holden"
------
My name is Holden


#### Ex. 3.1 Change directories to the assignments/002-unix-intro directory in the con-gen-csu repo

cd /projects/foxhol@colostate.edu/con-gen-csu/assignments/002-unix-intro

#### Ex. 3: print the absolute path of the directory 002-unix-intro that you just changed into

pwd
------
/projects/foxhol@colostate.edu/con-gen-csu/assignments/002-unix-intro

#### Ex. 4: list, in long format, all the files and directories in this homework directory

ls -l
------
total 280
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu   80 Jan 23 10:54 bam
-rwxr-xr-x. 1 foxhol@colostate.edu foxholgrp@colostate.edu  112 Jan 23 10:54 count_files.sh
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu 2940 Jan 23 10:54 fastq
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu   45 Jan 23 10:54 metadata
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu   80 Jan 23 10:54 sam
drwxr-sr-x. 3 foxhol@colostate.edu foxholgrp@colostate.edu  159 Jan 23 10:54 silly
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 9425 Jan 23 10:54 unix-intro-TEMPLATE.sh

#### Ex. 4.5 Without changing directories do a long listing of the con-gen-csu directory

ls -l ../../
------
total 240
drwxr-sr-x. 5 foxhol@colostate.edu foxholgrp@colostate.edu    87 Jan 23 10:54 assignments
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu   205 Jan 23 10:54 con-gen-csu.Rproj
drwxr-sr-x. 5 foxhol@colostate.edu foxholgrp@colostate.edu   125 Jan 23 10:54 data
drwxr-sr-x. 3 foxhol@colostate.edu foxholgrp@colostate.edu    91 Jan 23 10:54 dev
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 16623 Jan 23 10:54 README.md

#### Ex. 5: In the con-gen-csu directory there is a directory called `.git` that didn't get listed. 
####        List everything again, but make sure `.git` is in the output

ls -la ../../
------
total 384
drwxr-sr-x.  6 foxhol@colostate.edu foxholgrp@colostate.edu   184 Jan 23 10:54 .
drwxrws---. 12 foxhol@colostate.edu foxholgrp@colostate.edu   453 Jan 23 10:54 ..
drwxr-sr-x.  5 foxhol@colostate.edu foxholgrp@colostate.edu    87 Jan 23 10:54 assignments
-rw-r--r--.  1 foxhol@colostate.edu foxholgrp@colostate.edu   205 Jan 23 10:54 con-gen-csu.Rproj
drwxr-sr-x.  5 foxhol@colostate.edu foxholgrp@colostate.edu   125 Jan 23 10:54 data
drwxr-sr-x.  3 foxhol@colostate.edu foxholgrp@colostate.edu    91 Jan 23 10:54 dev
drwxr-sr-x.  8 foxhol@colostate.edu foxholgrp@colostate.edu   322 Jan 25 10:30 .git
-rw-r--r--.  1 foxhol@colostate.edu foxholgrp@colostate.edu    52 Jan 23 10:54 .gitignore
-rw-r--r--.  1 foxhol@colostate.edu foxholgrp@colostate.edu 16623 Jan 23 10:54 README.md

#### Ex. 6: What are the other hidden files/directories that show up
####        in the above listing? Just list them below (no special command)
####        to get them, since you did that above)

.
..
.git
.gitignore

#### Ex. 7: List (long format) the contents of the directory `.git` in the con-gen-csu directory

ls -l ../../.git
-----
total 552
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu     0 Jan 23 10:54 branches
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu   261 Jan 23 10:54 config
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu    73 Jan 23 10:54 description
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu    92 Jan 25 10:30 FETCH_HEAD
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu    21 Jan 23 10:54 HEAD
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu   530 Jan 23 10:54 hooks
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15581 Jan 23 10:54 index
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu    25 Jan 23 10:54 info
drwxr-sr-x. 3 foxhol@colostate.edu foxholgrp@colostate.edu    44 Jan 23 10:54 logs
drwxr-sr-x. 4 foxhol@colostate.edu foxholgrp@colostate.edu    44 Jan 25 10:30 objects
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu    41 Jan 25 10:30 ORIG_HEAD
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu   112 Jan 23 10:54 packed-refs
drwxr-sr-x. 5 foxhol@colostate.edu foxholgrp@colostate.edu    70 Jan 23 10:54 refs


#### Ex. 8: If you wanted to type `ls fastq/DPCh_plate1_A06_S6.R1.fq.gz`
####        on the command line, what is the fewest keystrokes that can
####        get you `fastq/DPCh_plate1_A06_S6.R1.fq.gz` using TAB completion?

ls f \t D \t A06 \t 1 \t return, so 12

#### Ex. 9: Make a new directory called `lonely-fastqs`, and inside of that,
####        two directories R1 and R2.

mkdir lonely-fastqs
cd  lonely-fastqs
mkdir R1 R2

#### Ex. 10: Copy (not move) all the read1 (`R1`) fastq files in `fastqs`
####         into `lonely-fastqs/R1` and all the read2 fastqs into 
####         `lonely-fastqs/R2`. When you are done, list the contents of 
####         `lonely-fastqs/R1` and `lonely-fastqs/R2`

cp fastq/*R1* lonely-fastqs/R1
cp fastq/*R2* lonely-fastqs/R2
ls lonely-fastqs/R1 lonely-fastqs/R2
-----
lonely-fastqs/R1:
DPCh_plate1_A05_S5.R1.fq.gz   DPCh_plate1_B06_S18.R1.fq.gz  DPCh_plate1_C11_S35.R1.fq.gz  DPCh_plate1_D12_S48.R1.fq.gz  DPCh_plate1_F05_S65.R1.fq.gz  DPCh_plate1_G06_S78.R1.fq.gz  DPCh_plate1_H11_S95.R1.fq.gz
DPCh_plate1_A06_S6.R1.fq.gz   DPCh_plate1_B11_S23.R1.fq.gz  DPCh_plate1_C12_S36.R1.fq.gz  DPCh_plate1_E05_S53.R1.fq.gz  DPCh_plate1_F06_S66.R1.fq.gz  DPCh_plate1_G11_S83.R1.fq.gz  DPCh_plate1_H12_S96.R1.fq.gz
DPCh_plate1_A11_S11.R1.fq.gz  DPCh_plate1_B12_S24.R1.fq.gz  DPCh_plate1_D05_S41.R1.fq.gz  DPCh_plate1_E06_S54.R1.fq.gz  DPCh_plate1_F11_S71.R1.fq.gz  DPCh_plate1_G12_S84.R1.fq.gz
DPCh_plate1_A12_S12.R1.fq.gz  DPCh_plate1_C05_S29.R1.fq.gz  DPCh_plate1_D06_S42.R1.fq.gz  DPCh_plate1_E11_S59.R1.fq.gz  DPCh_plate1_F12_S72.R1.fq.gz  DPCh_plate1_H05_S89.R1.fq.gz
DPCh_plate1_B05_S17.R1.fq.gz  DPCh_plate1_C06_S30.R1.fq.gz  DPCh_plate1_D11_S47.R1.fq.gz  DPCh_plate1_E12_S60.R1.fq.gz  DPCh_plate1_G05_S77.R1.fq.gz  DPCh_plate1_H06_S90.R1.fq.gz

lonely-fastqs/R2:
DPCh_plate1_A05_S5.R2.fq.gz   DPCh_plate1_B06_S18.R2.fq.gz  DPCh_plate1_C11_S35.R2.fq.gz  DPCh_plate1_D12_S48.R2.fq.gz  DPCh_plate1_F05_S65.R2.fq.gz  DPCh_plate1_G06_S78.R2.fq.gz  DPCh_plate1_H11_S95.R2.fq.gz
DPCh_plate1_A06_S6.R2.fq.gz   DPCh_plate1_B11_S23.R2.fq.gz  DPCh_plate1_C12_S36.R2.fq.gz  DPCh_plate1_E05_S53.R2.fq.gz  DPCh_plate1_F06_S66.R2.fq.gz  DPCh_plate1_G11_S83.R2.fq.gz  DPCh_plate1_H12_S96.R2.fq.gz
DPCh_plate1_A11_S11.R2.fq.gz  DPCh_plate1_B12_S24.R2.fq.gz  DPCh_plate1_D05_S41.R2.fq.gz  DPCh_plate1_E06_S54.R2.fq.gz  DPCh_plate1_F11_S71.R2.fq.gz  DPCh_plate1_G12_S84.R2.fq.gz
DPCh_plate1_A12_S12.R2.fq.gz  DPCh_plate1_C05_S29.R2.fq.gz  DPCh_plate1_D06_S42.R2.fq.gz  DPCh_plate1_E11_S59.R2.fq.gz  DPCh_plate1_F12_S72.R2.fq.gz  DPCh_plate1_H05_S89.R2.fq.gz
DPCh_plate1_B05_S17.R2.fq.gz  DPCh_plate1_C06_S30.R2.fq.gz  DPCh_plate1_D11_S47.R2.fq.gz  DPCh_plate1_E12_S60.R2.fq.gz  DPCh_plate1_G05_S77.R2.fq.gz  DPCh_plate1_H06_S90.R2.fq.gz

#### Ex. 11: do a recursive, short listing of the contents of `lonely-fastqs`

ls -lR lonely-fastqs
-----
lonely-fastqs:
total 64
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu 1470 Jan 25 11:37 R1
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu 1470 Jan 25 11:38 R2

lonely-fastqs/R1:
total 2400
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15886 Jan 25 11:37 DPCh_plate1_A05_S5.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 10878 Jan 25 11:37 DPCh_plate1_A06_S6.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13113 Jan 25 11:37 DPCh_plate1_A11_S11.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 16875 Jan 25 11:37 DPCh_plate1_A12_S12.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15946 Jan 25 11:37 DPCh_plate1_B05_S17.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13718 Jan 25 11:37 DPCh_plate1_B06_S18.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13782 Jan 25 11:37 DPCh_plate1_B11_S23.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 11460 Jan 25 11:37 DPCh_plate1_B12_S24.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15095 Jan 25 11:37 DPCh_plate1_C05_S29.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu  9595 Jan 25 11:37 DPCh_plate1_C06_S30.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 14501 Jan 25 11:37 DPCh_plate1_C11_S35.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 17854 Jan 25 11:37 DPCh_plate1_C12_S36.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu  9562 Jan 25 11:37 DPCh_plate1_D05_S41.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 11205 Jan 25 11:37 DPCh_plate1_D06_S42.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 11321 Jan 25 11:37 DPCh_plate1_D11_S47.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 14357 Jan 25 11:37 DPCh_plate1_D12_S48.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 14388 Jan 25 11:37 DPCh_plate1_E05_S53.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13276 Jan 25 11:37 DPCh_plate1_E06_S54.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu  9000 Jan 25 11:37 DPCh_plate1_E11_S59.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 11248 Jan 25 11:37 DPCh_plate1_E12_S60.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15920 Jan 25 11:37 DPCh_plate1_F05_S65.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13577 Jan 25 11:37 DPCh_plate1_F06_S66.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13627 Jan 25 11:37 DPCh_plate1_F11_S71.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 14522 Jan 25 11:37 DPCh_plate1_F12_S72.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13060 Jan 25 11:37 DPCh_plate1_G05_S77.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 17647 Jan 25 11:37 DPCh_plate1_G06_S78.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 11107 Jan 25 11:37 DPCh_plate1_G11_S83.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13969 Jan 25 11:37 DPCh_plate1_G12_S84.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 12324 Jan 25 11:37 DPCh_plate1_H05_S89.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 12268 Jan 25 11:37 DPCh_plate1_H06_S90.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu  8861 Jan 25 11:37 DPCh_plate1_H11_S95.R1.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 17151 Jan 25 11:37 DPCh_plate1_H12_S96.R1.fq.gz

lonely-fastqs/R2:
total 2544
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 18674 Jan 25 11:38 DPCh_plate1_A05_S5.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 11177 Jan 25 11:38 DPCh_plate1_A06_S6.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 14600 Jan 25 11:38 DPCh_plate1_A11_S11.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 19251 Jan 25 11:38 DPCh_plate1_A12_S12.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 18375 Jan 25 11:38 DPCh_plate1_B05_S17.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15082 Jan 25 11:38 DPCh_plate1_B06_S18.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15689 Jan 25 11:38 DPCh_plate1_B11_S23.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13002 Jan 25 11:38 DPCh_plate1_B12_S24.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 17444 Jan 25 11:38 DPCh_plate1_C05_S29.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 10570 Jan 25 11:38 DPCh_plate1_C06_S30.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 16830 Jan 25 11:38 DPCh_plate1_C11_S35.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 20650 Jan 25 11:38 DPCh_plate1_C12_S36.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 11242 Jan 25 11:38 DPCh_plate1_D05_S41.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 12298 Jan 25 11:38 DPCh_plate1_D06_S42.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 12844 Jan 25 11:38 DPCh_plate1_D11_S47.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 16601 Jan 25 11:38 DPCh_plate1_D12_S48.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 16211 Jan 25 11:38 DPCh_plate1_E05_S53.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15591 Jan 25 11:38 DPCh_plate1_E06_S54.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 10712 Jan 25 11:38 DPCh_plate1_E11_S59.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13527 Jan 25 11:38 DPCh_plate1_E12_S60.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 18955 Jan 25 11:38 DPCh_plate1_F05_S65.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15270 Jan 25 11:38 DPCh_plate1_F06_S66.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15926 Jan 25 11:38 DPCh_plate1_F11_S71.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 16254 Jan 25 11:38 DPCh_plate1_F12_S72.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15030 Jan 25 11:38 DPCh_plate1_G05_S77.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 19296 Jan 25 11:38 DPCh_plate1_G06_S78.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 12501 Jan 25 11:38 DPCh_plate1_G11_S83.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 15880 Jan 25 11:38 DPCh_plate1_G12_S84.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 14736 Jan 25 11:38 DPCh_plate1_H05_S89.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 13675 Jan 25 11:38 DPCh_plate1_H06_S90.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 10736 Jan 25 11:38 DPCh_plate1_H11_S95.R2.fq.gz
-rw-r--r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu 19785 Jan 25 11:38 DPCh_plate1_H12_S96.R2.fq.gz


#### Ex. 12: Use the recursive (-r) option to remove `lonely-fastqs`
####         and its contents

rm -r lonely-fastqs/

#### Ex. 13: Make two new directories in the top level of the
####         repo called `fq_AB` and `fq_notAB`

mkdir fq_AB fq_notAB

#### Ex. 14: Using the `[` `]` copy the R1 files in `fastqs` that
####         belong to sample names (the part immediately after `DPCh_plate1_`)
####         starting with an `A` or `B` to `fq_AB`.

cp  assignments/002-unix-intro/fastq/*[AB]*.R1* fq_AB/


#### Ex. 15: Now, using negation (`^`) with `[` and `]` copy all the
####         R1 files that don't belong to sample names starting with an
####         `A` or a `B` to `fq_notAB`. When you are done, on the next line in
####         the code block, list the contents of `fq_AB` and `fq_notAB`.

cp  assignments/002-unix-intro/fastq/*[^AB]*.R1* fq_notAB/


#### Ex. 16: Remove `fq_AB` and `fq_notAB`, and their contents

rm -r fq_AB fq_notAB/

#### Ex. 17: Using the `{,}` construct create five directories named 
####         `dir_A`, `dir_C`, `dir_E`, `dir_G`, and `dir_I`, and list them
####         (but not their contents) when you are done. (Think `ls -d`).

mkdir dir_{A,C,E,G,I}
ls -d dir_*
-----
dir_A  dir_C  dir_E  dir_G  dir_I


#### Ex. 18: Using globbing, remove `dir_A`, `dir_C`, `dir_E`, `dir_G`, and `dir_I`,
####         using a command with 8 characters (including spaces)

rm -r dir_?

#### Ex. 19: Create a directory called `nice_dir_name` and then use `echo`,
####         redirecting its output to create a file called `nice_file_name`
####         inside of `nice_dir_name` whose contents is the string
####         `A string in a file!`

echo "A string in a file" > nice_dir_name/nice_file_name

#### Ex. 20: Catenate the contents of `nice_dir_name/nice_file_name` to _stdout_

cat nice_dir_name/nice_file_name
-----
A string in a file

#### Ex. 21: Create a directory called `bad directory name with spaces`, and then,
####         with redirection, create a file inside it, named 
####         `bad file name with spaces` whose contents are the string
####         `Whoa! No spaces, please!`. Use backslash escaping instead of quoting

mkdir bad\ directory\ name\ with\ spaces
echo Woah! No spaces please > bad\ directory\ name\ with\ spaces/bad\ file\ name\ with\ spaces

#### Ex. 22: Catenate the contents of 
####         `bad directory name with spaces/bad file name with spaces` to stdout.

cat bad\ directory\ name\ with\ spaces/bad\ file\ name\ with\ spaces
-----
Woah! No spaces please

#### Ex. 23: List the directories (just the names, not the contents (`-d`)) of
####         `bad directory name with spaces` and `nice_dir_name`.

ls -d  bad\ directory\ name\ with\ spaces nice_dir_name
-----
bad directory name with spaces  nice_dir_name

#### Ex. 24: Once you are convinced that you can list the directories
####         correctly in your terminal, recall that `ls` command (i.e. get it back on the
####         command line using the up arrow on your keyboard) and replace `ls` with
####         `rm -r` to remove them. BE CAREFUL with the rm command!

rm -r  bad\ directory\ name\ with\ spaces nice_dir_name

#### Ex. 25: Why is it a good idea to `ls` things before removing them?

So you dont unintentionally remove something youd like to keep.

#### Ex. 26: If you had just typed `rm -r bad directory name with spaces` 
####         what would Unix have tried to remove? (No command to type here,
####         just answer the question).

This would remove any directories named bad, directory, name, etc. Fortunately these dont exist

#### Ex. 27: There are bam, sam, and fastq files, in the appropriately
####         named directories for sample `A05_S5`. Make a directory named `A05_S5`
####         and copy all those files into that new directory. List the directory
####         when you are done.

mkdir A05_S5
cp bam/*A05_S5* A05_S5/
cp fastq/*A05_S5* A05_S5/
cp sam/*A05_S5* A05_S5/
ls A05_S5
-----
DPCh_plate1_A05_S5.bam  DPCh_plate1_A05_S5.R1.fq.gz  DPCh_plate1_A05_S5.R2.fq.gz  DPCh_plate1_A05_S5.sam


#### Ex. 28: remove the directory `A05_S5` and its contents

rm -r A05_S5/

#### Ex. 29: Use `ls` to try to list the file `it_aint_here`

ls it_aint_here

ls: cannot access it_aint_here: No such file or directory

#### Ex. 30: Now, do the same thing but redirect _stderr_ into a file called 
####         `my_bad.txt`, and then catenate the contents of that file, and then remove it

ls it_aint_here 2> my_bad.txt
cat my_bad.txt
-----
ls: cannot access it_aint_here: No such file or directory
-----
rm my_bad.txt

#### Ex. 31: The files in `fastq` are text files, but they are all gzipped.
####         Using `gzcat` and a pipe, view the first 8 lines of 
####         `fastq/DPCh_plate1_C11_S35.R1.fq.gz`

gzcat fastq/DPCh_plate1_C11_S35.R1.fq.gz | head -n 8
-----
-bash: gzcat: command not found
-----
zcat fastq/DPCh_plate1_C11_S35.R1.fq.gz | head -8
-----
@K00364:64:HTYYCBBXX:1:1101:1824:48192/1
GTAGAATAATAGTGAATCAAATCAAATGTTATTTGTCACATGCGCTGAATACAACAGGTGTGGACCTTACAGTGAAATGCTTCCTTACAAGCCCTTAACCAACAATGCAGTTTTAAGAAAAATGAGTGTGAGATAAGTAAAAAATAGAAAA
+
AAFFFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJAJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJ7JJJJJJFFFFJJJJJJ7A7AJJAFAJJJJJFJJJJ-<JFJ-FFFJJJ
@K00364:64:HTYYCBBXX:1:1101:2869:22080/1
TTAAAACACGGTATGATGCAAGCAGCACAACACATCAATAACAAAAATACAAGAATTAGGGTCAGAAATCCAGTAACCACCATACTAGTGTACTTACCAAACCAGGCTCCCAACCAAGAGAACAGTCCAGACTCCTCCACCCTCGCCATGG
+
-AAFFJJJJJJJJJJJJFFJJJFJFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFFJJJ<JJJJJJFFFFJFFJJJJJJAFJJJJJJJJJJJJJJJJJJFAJJJJJJJJJJJJJJJJJJJFJJJFAJJJJJJJFJJJJJJJJFFJJ

#### Ex. 32: Do the same to see the first 8 lines of `fastq/DPCh_plate1_C11_S35.R2.fq.gz`

zcat fastq/DPCh_plate1_C11_S35.R2.fq.gz | head -8
-----
@K00364:64:HTYYCBBXX:1:1101:1824:48192/2
CACAAGGAACGACAGAGGGTAGTGCGTACGGCCCAGCACATCACTGGGACCAAGCATCCTGCAATCCAGGACCTCCATACCAGGCGGTGTCAGAGGAAGGCCCTAAAATTGTCAAAGACTCCAGCCACCCTAGTCATTAACTCTTCGCTCT
+
A<-A-<-F<AJ-<---<<--<-<-7FFJ-77A<-<--7-<7-<-7<J<77A<--7-AAA7-AF-7FAF<-<FJ---7-77FJA7-77F7FFJ7F<--<--77)A7FA-A7-<---7<<F7-<-7<)7--)<)7<AF----7<<<<-)-7)
@K00364:64:HTYYCBBXX:1:1101:2869:22080/2
CTATGATCAACAGCGTTTTGTGATTTACCCCCGTGATGCACTCACTGGTATGTCTGAACAGCTTGAGGCCACATCTAGGGTTGCCAGACAGAATAGACTTGCTTTGGATATGCTTCTTGCCAGTCAGGGGGGTGTCTGTAAGATGTTCGGT
+
AAAFAFJJJJJJJJJJ-FJJJJJJFJJJJFJJJJJJJJJJJJJFJFFJFFFFFFJFFJJJFJFAAA777AAJJJAA--A<-A<-JJA-<JFJJJ-7<-AAJJFJJJ<JJ<JAFFFF---7<<7777<)7<<-<777-<-7--<FJJ<F-<<

#### Ex. 33: What do you notice about the names of the two reads in each 
####         file (Lines 1 and 5, that start with a `@`)

The names of the two reads in each file end with 1 with R1 files and 2 with R2 files.

#### Ex. 34: Print the date, redirect it to a file called `now.txt`,
####         catenate that file to _stdout_ and then remove it

date > now.txt
cat now.txt
-----
Fri Jan 26 11:32:35 MST 2024
-----
ls now.txt
-----
now.txt
-----
rm now.txt

#### Ex. 35: Count the number of lines/words/characters (using `wc`)
####         in the two SAM files in the `sam` directory

 wc sam/*sam
 -----
 14219  45092 511203 sam/DPCh_plate1_A05_S5.sam
 14150  43985 479977 sam/DPCh_plate1_A06_S6.sam
 28369  89077 991180 total

#### Ex. 36: Note that gzcat will decompress all files you give itand send the 
####         output to _stdout_. Knowing this, count how many lines are in each of 
####         the `R1` files in `fastq` (after decompressing them into text files),
####         and also count up all the lines in the `R1` files in `fastq`. 
 
zcat fastq/*.R1.fq.gz | wc -l

---

19364


#### Ex. 37: Now, gzcat all the `R1` files in `fastq` and redirect that
####         to a file called `R1_all_via_gzcat.fq` in the top directory of the repo

zcat fastq/*.R1.fq.gz > ../../R1_all_via_zcat.fq


#### Ex. 38: People are usually familiar with using `cat` to catenate text
####         files. It turns out that you can also catenate `gzip` compressed files. 
####         The result is another properly gzipped file that can be decompressed. 
####         Catenate all the gzipped `R1` files in `fastq` into a single (still gzipped)
####         file called `R1_all_via_cat.fq.gz`

cat fastq/*R1* > R1_all_via_cat.fq.gz

#### Ex. 39: Copy `R1_all_via_cat.fq.gz` to `copy_of_R1_all_via_cat.fq.gz`

cp R1_all_via_cat.fq.gz copy_of_R1_all_via_cat.fq.gz

#### Ex. 40: Now, decompress `R1_all_via_cat.fq.gz` into `R1_all_via_cat.fq`

gunzip R1_all_via_cat.fq.gz

#### Ex. 41: Compute the SHA1 hashes of `R1_all_via_cat.fq` and `R1_all_via_gzcat.fq`
####         to confirm they are identical

sha1sum R1_all_via_cat.fq ../../R1_all_via_zcat.fq
-----
d5b95bf950e8150c56aed90eea9febeb23ddd856  R1_all_via_cat.fq
d5b95bf950e8150c56aed90eea9febeb23ddd856  ../../R1_all_via_zcat.fq

#### Ex. 42: But now, gzip `R1_all_via_gzcat.fq` and compare the result to
####         `copy_of_R1_all_via_cat.fq.gz` by computing the SHA1 hash of each

gzip ../../R1_all_via_zcat.fq
sha1sum copy_of_R1_all_via_cat.fq.gz ../../R1_all_via_zcat.fq.gz
-----
93588c00857e42325bf64bb0ea5992307460737c  copy_of_R1_all_via_cat.fq.gz
6bf91a5af380919703efbe158a0a87987e1a708e  ../../R1_all_via_zcat.fq.gz

#### Ex. 43: using `du` with the `-h` (i.e. "human readable" option) print the
####         file sizes of `R1_all_via_cat.fq` and `copy_of_R1_all_via_cat.fq.gz`.

du -h R1_all_via_cat.fq copy_of_R1_all_via_cat.fq.gz
-----
2.4M	R1_all_via_cat.fq
704K	copy_of_R1_all_via_cat.fq.gz


#### Ex. 44: By what factor (approximately) does the compression save storage
####         space on your disk?

~3x


#### Ex. 45: Remove all files starting with `R1_all` and `copy_of_R1`

rm R1* copy* ../../R1*


#### Ex. 46: Now, print the file sizes (with `du -h`, again) of the files
####         in `bam` to the files in `sam`

du -h bam/* sam/*
-----
408K	bam/DPCh_plate1_A05_S5.bam
384K	bam/DPCh_plate1_A06_S6.bam
784K	sam/DPCh_plate1_A05_S5.sam
752K	sam/DPCh_plate1_A06_S6.sam


#### Ex. 47: Print the last 15 lines of `sam/DPCh_plate1_A05_S5.sam` to _stdout_

tail -15 sam/DPCh_plate1_A05_S5.sam
-----
Its not very happy when I copy and paste stdout into here. It replaces this whole file with 15 lines.


#### Ex. 48: Print the _first_ 15 lines of `sam/DPCh_plate1_A05_S5.sam` to _stdout_

head -15 sam/DPCh_plate1_A05_S5.sam
-----
@HD	VN:1.3	SO:coordinate
@SQ	SN:NC_037097.1	LN:96198142
@SQ	SN:NC_037098.1	LN:57406636
@SQ	SN:NC_037099.1	LN:81079776
@SQ	SN:NC_037100.1	LN:74299616
@SQ	SN:NC_037101.1	LN:93271540
@SQ	SN:NC_037102.1	LN:77009353
@SQ	SN:NC_037103.1	LN:86953105
@SQ	SN:NC_037104.1	LN:73297397
@SQ	SN:NC_037105.1	LN:90872356
@SQ	SN:NC_037106.1	LN:60898746
@SQ	SN:NC_037107.1	LN:48052637
@SQ	SN:NC_037108.1	LN:77127610
@SQ	SN:NC_037109.1	LN:75288599
@SQ	SN:NC_037110.1	LN:55471129

#### Ex. 49: Catenate the file `count_files.sh` to _stdout_

cat count_files.sh
-----
# This looks fun
ls -lR  * | awk 'NF>7' | wc | awk '{print "Estimated", $1, "files in the current directory"}'

#### Ex. 50: Note that `count_files.sh` is a short shell script. Try to 
####         execute it with `./count_files.sh`

./count_files.sh
-----
Estimated 77 files in the current directory

#### Ex. 51: List (long) `count_files.sh` to see what the permissions are,
####         and then add execute (`x`) permissions to users and groups with
####         the "add-or-subtract permissions syntax" of `chmod`, then long list it again

ls -l count_files.sh
-----
-rwxr-xr-x. 1 foxhol@colostate.edu foxholgrp@colostate.edu 112 Jan 23 10:54 count_files.sh
chmod u+x,g+x count_files.sh
ls -l count_files.sh
-----
-rwxr-xr-x. 1 foxhol@colostate.edu foxholgrp@colostate.edu 112 Jan 23 10:54 count_files.sh

#### Ex. 52: Use chmod to change permissions of the files in the `silly`
####         directory to match their names. For example for the first 
####         one you would use: `chmod 770 FILE-rwxrwx---`. Use the octal
####         specifiers to `chmod`. Do this for all 5 files (one chmod command for each),
####         and at the end do `ls -l silly` to verify they are correct.

chmod 640 silly/FILE-rw-r-----
chmod 664 silly/FILE-rw-rw-r--
chmod 740 silly/FILE-rwxr-----
chmod 774 silly/FILE-rwxrwxr--
ls -l silly
total 128
drwxr-sr-x. 2 foxhol@colostate.edu foxholgrp@colostate.edu 23 Jan 23 10:54 DIRdrwxrwxr-x
-rw-r-----. 1 foxhol@colostate.edu foxholgrp@colostate.edu  0 Jan 23 10:54 FILE-rw-r-----
-rw-rw-r--. 1 foxhol@colostate.edu foxholgrp@colostate.edu  0 Jan 23 10:54 FILE-rw-rw-r--
-rwxr-----. 1 foxhol@colostate.edu foxholgrp@colostate.edu  0 Jan 23 10:54 FILE-rwxr-----
-rwxrwxr--. 1 foxhol@colostate.edu foxholgrp@colostate.edu  0 Jan 23 10:54 FILE-rwxrwxr--



