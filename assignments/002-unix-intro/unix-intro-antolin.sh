
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

[antolin@colostate.edu@login11 con-gen-csu]$ echo "My name is Michael Franc Antolin"
My name is Michael Franc Antolin


#### Ex. 3.1 Change directories to the assignments/002-unix-intro directory in the con-gen-csu repo

[antolin@colostate.edu@login11 con-gen-csu]$ cd /projects/antolin@colostate.edu/con-gen-csu/assignments/002-unix-intro/
assignments/002-unix-intro/



#### Ex. 3: print the absolute path of the directory 002-unix-intro that you just changed into

[antolin@colostate.edu@login11 002-unix-intro]$ pwd

/projects/antolin@colostate.edu/con-gen-csu/assignments/002-unix-intro



#### Ex. 4: list, in long format, all the files and directories in this homework directory

[antolin@colostate.edu@login11 002-unix-intro]$ ls -l

[antolin@colostate.edu@login11 002-unix-intro]$ ls -l
total 312
drwxr-sr-x. 2 antolin@colostate.edu antolingrp@colostate.edu   80 Jan 23 18:58 bam
-rwxr-xr-x. 1 antolin@colostate.edu antolingrp@colostate.edu  112 Jan 23 18:58 count_files.sh
drwxr-sr-x. 2 antolin@colostate.edu antolingrp@colostate.edu 2940 Jan 23 18:58 fastq
drwxr-sr-x. 4 antolin@colostate.edu antolingrp@colostate.edu   40 Jan 25 11:40 lonely-fastqs
drwxr-sr-x. 2 antolin@colostate.edu antolingrp@colostate.edu   45 Jan 23 18:58 metadata
drwxr-sr-x. 2 antolin@colostate.edu antolingrp@colostate.edu   80 Jan 23 18:58 sam
drwxr-sr-x. 3 antolin@colostate.edu antolingrp@colostate.edu  159 Jan 23 18:58 silly
-rw-r--r--. 1 antolin@colostate.edu antolingrp@colostate.edu 9425 Jan 23 18:58 unix-intro-TEMPLATE.sh



#### Ex. 4.5 Without changing directories do a long listing of the con-gen-csu directory

[antolin@colostate.edu@login11 002-unix-intro]$ ls -l /projects/antolin@colostate.edu/con-gen-csu
total 240
drwxr-sr-x. 7 antolin@colostate.edu antolingrp@colostate.edu   164 Jan 24 18:52 assignments
-rw-r--r--. 1 antolin@colostate.edu antolingrp@colostate.edu   205 Jan 23 18:58 con-gen-csu.Rproj
drwxr-sr-x. 5 antolin@colostate.edu antolingrp@colostate.edu   125 Jan 23 18:58 data
drwxr-sr-x. 3 antolin@colostate.edu antolingrp@colostate.edu    91 Jan 23 18:58 dev
-rw-r--r--. 1 antolin@colostate.edu antolingrp@colostate.edu 21962 Jan 24 18:52 README.md



#### Ex. 5: In the con-gen-csu directory there is a directory called `.git` that didn't get listed. 
####        List everything again, but make sure `.git` is in the output

[antolin@colostate.edu@login11 002-unix-intro]$ ls -a -l /projects/antolin@colostate.edu/con-gen-csu

OR

[antolin@colostate.edu@login11 002-unix-intro]$ ls -al /projects/antolin@colostate.edu/con-gen-csu

total 384
drwxr-sr-x. 6 antolin@colostate.edu antolingrp@colostate.edu   184 Jan 24 18:52 .
drwxrws---. 3 antolin@colostate.edu antolingrp@colostate.edu    58 Jan 23 18:58 ..
drwxr-sr-x. 7 antolin@colostate.edu antolingrp@colostate.edu   164 Jan 24 18:52 assignments
-rw-r--r--. 1 antolin@colostate.edu antolingrp@colostate.edu   205 Jan 23 18:58 con-gen-csu.Rproj
drwxr-sr-x. 5 antolin@colostate.edu antolingrp@colostate.edu   125 Jan 23 18:58 data
drwxr-sr-x. 3 antolin@colostate.edu antolingrp@colostate.edu    91 Jan 23 18:58 dev
drwxr-sr-x. 8 antolin@colostate.edu antolingrp@colostate.edu   322 Jan 24 18:52 .git
-rw-r--r--. 1 antolin@colostate.edu antolingrp@colostate.edu    52 Jan 23 18:58 .gitignore
-rw-r--r--. 1 antolin@colostate.edu antolingrp@colostate.edu 21962 Jan 24 18:52 README.md



#### Ex. 6: What are the other hidden files/directories that show up
####        in the above listing? Just list them below (no special command)
####        to get them, since you did that above)

.gitignore

#### Ex. 7: List (long format) the contents of the directory `.git` in the con-gen-csu directory

[antolin@colostate.edu@login11 002-unix-intro]$ ls -al /projects/antolin@colostate.edu/con-gen-csu/.git
total 616
drwxr-sr-x.  8 antolin@colostate.edu antolingrp@colostate.edu   322 Jan 24 18:52 .
drwxr-sr-x.  6 antolin@colostate.edu antolingrp@colostate.edu   184 Jan 24 18:52 ..
drwxr-sr-x.  2 antolin@colostate.edu antolingrp@colostate.edu     0 Jan 23 18:58 branches
-rw-r--r--.  1 antolin@colostate.edu antolingrp@colostate.edu   262 Jan 23 18:58 config
-rw-r--r--.  1 antolin@colostate.edu antolingrp@colostate.edu    73 Jan 23 18:58 description
-rw-r--r--.  1 antolin@colostate.edu antolingrp@colostate.edu    93 Jan 24 18:52 FETCH_HEAD
-rw-r--r--.  1 antolin@colostate.edu antolingrp@colostate.edu    21 Jan 23 18:58 HEAD
drwxr-sr-x.  2 antolin@colostate.edu antolingrp@colostate.edu   530 Jan 23 18:58 hooks
-rw-r--r--.  1 antolin@colostate.edu antolingrp@colostate.edu 15928 Jan 24 18:52 index
drwxr-sr-x.  2 antolin@colostate.edu antolingrp@colostate.edu    25 Jan 23 18:58 info
drwxr-sr-x.  3 antolin@colostate.edu antolingrp@colostate.edu    44 Jan 23 18:58 logs
drwxr-sr-x. 33 antolin@colostate.edu antolingrp@colostate.edu   624 Jan 24 18:52 objects
-rw-r--r--.  1 antolin@colostate.edu antolingrp@colostate.edu    41 Jan 24 18:52 ORIG_HEAD
-rw-r--r--.  1 antolin@colostate.edu antolingrp@colostate.edu   112 Jan 23 18:58 packed-refs
drwxr-sr-x.  5 antolin@colostate.edu antolingrp@colostate.edu    70 Jan 23 18:58 refs



#### Ex. 8: If you wanted to type `ls fastq/DPCh_plate1_A06_S6.R1.fq.gz`
####        on the command line, what is the fewest keystrokes that can
####        get you `fastq/DPCh_plate1_A06_S6.R1.fq.gz` using TAB completion?


Four 


[antolin@colostate.edu@login11 002-unix-intro]$ ls f
[tab]
[antolin@colostate.edu@login11 002-unix-intro]$ ls fastq/
[tab]
[antolin@colostate.edu@login11 002-unix-intro]$ ls fastq/DPCh_plate1_
[tab] (warning done)
[tab] (goes)


#### Ex. 9: Make a new directory called `lonely-fastqs`, and inside of that,
####        two directories R1 and R2.

[antolin@colostate.edu@login11 002-unix-intro]$ mkdir lonely-fastqs
[antolin@colostate.edu@login11 lonely-fastqs]$ cd lonely-fastqs
[antolin@colostate.edu@login11 lonely-fastqs]$ mkdir R1
[antolin@colostate.edu@login11 lonely-fastqs]$ mkdir R2
[antolin@colostate.edu@login11 lonely-fastqs]$ ls
R1  R2


#### Ex. 10: Copy (not move) all the read1 (`R1`) fastq files in `fastqs`
####         into `lonely-fastqs/R1` and all the read2 fastqs into 
####         `lonely-fastqs/R2`. When you are done, list the contents of 
####         `lonely-fastqs/R1` and `lonely-fastqs/R2`

[antolin@colostate.edu@login11 002-unix-intro]$ cp fastq/*R1* lonely-fastqs/R1/
[antolin@colostate.edu@login11 002-unix-intro]$ cp fastq/*R2* lonely-fastqs/R2/

[antolin@colostate.edu@login11 002-unix-intro]$ ls lonely-fastqs/R1
DPCh_plate1_A05_S5.R1.fq.gz   DPCh_plate1_B06_S18.R1.fq.gz  DPCh_plate1_C11_S35.R1.fq.gz  DPCh_plate1_D12_S48.R1.fq.gz  DPCh_plate1_F05_S65.R1.fq.gz  DPCh_plate1_G06_S78.R1.fq.gz  DPCh_plate1_H11_S95.R1.fq.gz
DPCh_plate1_A06_S6.R1.fq.gz   DPCh_plate1_B11_S23.R1.fq.gz  DPCh_plate1_C12_S36.R1.fq.gz  DPCh_plate1_E05_S53.R1.fq.gz  DPCh_plate1_F06_S66.R1.fq.gz  DPCh_plate1_G11_S83.R1.fq.gz  DPCh_plate1_H12_S96.R1.fq.gz
DPCh_plate1_A11_S11.R1.fq.gz  DPCh_plate1_B12_S24.R1.fq.gz  DPCh_plate1_D05_S41.R1.fq.gz  DPCh_plate1_E06_S54.R1.fq.gz  DPCh_plate1_F11_S71.R1.fq.gz  DPCh_plate1_G12_S84.R1.fq.gz
DPCh_plate1_A12_S12.R1.fq.gz  DPCh_plate1_C05_S29.R1.fq.gz  DPCh_plate1_D06_S42.R1.fq.gz  DPCh_plate1_E11_S59.R1.fq.gz  DPCh_plate1_F12_S72.R1.fq.gz  DPCh_plate1_H05_S89.R1.fq.gz
DPCh_plate1_B05_S17.R1.fq.gz  DPCh_plate1_C06_S30.R1.fq.gz  DPCh_plate1_D11_S47.R1.fq.gz  DPCh_plate1_E12_S60.R1.fq.gz  DPCh_plate1_G05_S77.R1.fq.gz  DPCh_plate1_H06_S90.R1.fq.gz

[antolin@colostate.edu@login11 002-unix-intro]$ ls lonely-fastqs/R2
DPCh_plate1_A05_S5.R2.fq.gz   DPCh_plate1_B06_S18.R2.fq.gz  DPCh_plate1_C11_S35.R2.fq.gz  DPCh_plate1_D12_S48.R2.fq.gz  DPCh_plate1_F05_S65.R2.fq.gz  DPCh_plate1_G06_S78.R2.fq.gz  DPCh_plate1_H11_S95.R2.fq.gz
DPCh_plate1_A06_S6.R2.fq.gz   DPCh_plate1_B11_S23.R2.fq.gz  DPCh_plate1_C12_S36.R2.fq.gz  DPCh_plate1_E05_S53.R2.fq.gz  DPCh_plate1_F06_S66.R2.fq.gz  DPCh_plate1_G11_S83.R2.fq.gz  DPCh_plate1_H12_S96.R2.fq.gz
DPCh_plate1_A11_S11.R2.fq.gz  DPCh_plate1_B12_S24.R2.fq.gz  DPCh_plate1_D05_S41.R2.fq.gz  DPCh_plate1_E06_S54.R2.fq.gz  DPCh_plate1_F11_S71.R2.fq.gz  DPCh_plate1_G12_S84.R2.fq.gz
DPCh_plate1_A12_S12.R2.fq.gz  DPCh_plate1_C05_S29.R2.fq.gz  DPCh_plate1_D06_S42.R2.fq.gz  DPCh_plate1_E11_S59.R2.fq.gz  DPCh_plate1_F12_S72.R2.fq.gz  DPCh_plate1_H05_S89.R2.fq.gz
DPCh_plate1_B05_S17.R2.fq.gz  DPCh_plate1_C06_S30.R2.fq.gz  DPCh_plate1_D11_S47.R2.fq.gz  DPCh_plate1_E12_S60.R2.fq.gz  DPCh_plate1_G05_S77.R2.fq.gz  DPCh_plate1_H06_S90.R2.fq.gz



#### Ex. 11: do a recursive, short listing of the contents of `lonely-fastqs`

[antolin@colostate.edu@login11 002-unix-intro]$ ls -R lonely-fastqs
lonely-fastqs:
R1  R2

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


#### Ex. 12: Use the recursive (-r) option to remove `lonely-fastqs`
rm -r####         and its contents

[antolin@colostate.edu@login11 002-unix-intro]$ rm -r lonely-fastqs
[antolin@colostate.edu@login11 002-unix-intro]$ ls
bam  count_files.sh  fastq  metadata  sam  silly  unix-intro-TEMPLATE.sh



#### Ex. 13: Make two new directories in the top level of the
####         repo called `fq_AB` and `fq_notAB`

[antolin@colostate.edu@login11 002-unix-intro]$ mkdir fq_AB
[antolin@colostate.edu@login11 002-unix-intro]$ mkdir fq_notAB


#### Ex. 14: Using the `[` `]` copy the R1 files in `fastqs` that
####         belong to sample names (the part immediately after `A-B`)
####         starting with an `A` or `B` to `fq_AB`.

[antolin@colostate.edu@login11 002-unix-intro]$ cp fastq/DPCh_plate1_[A-B]* fq_AB/
[antolin@colostate.edu@login11 002-unix-intro]$ ls fq_AB
DPCh_plate1_A05_S5.R1.fq.gz  DPCh_plate1_A06_S6.R1.fq.gz  DPCh_plate1_A11_S11.R1.fq.gz  DPCh_plate1_A12_S12.R1.fq.gz  DPCh_plate1_B05_S17.R1.fq.gz  DPCh_plate1_B06_S18.R1.fq.gz  DPCh_plate1_B11_S23.R1.fq.gz  DPCh_plate1_B12_S24.R1.fq.gz
DPCh_plate1_A05_S5.R2.fq.gz  DPCh_plate1_A06_S6.R2.fq.gz  DPCh_plate1_A11_S11.R2.fq.gz  DPCh_plate1_A12_S12.R2.fq.gz  DPCh_plate1_B05_S17.R2.fq.gz  DPCh_plate1_B06_S18.R2.fq.gz  DPCh_plate1_B11_S23.R2.fq.gz  DPCh_plate1_B12_S24.R2.fq.gz



#### Ex. 15: Now, using negation (`^`) with `[` and `]` copy all the
####         R1 files that don't belong to sample names starting with an
####         `A` or a `B` to `fq_notAB`. When you are done, on the next line in
####         the code block, list the contents of `fq_AB` and `fq_notAB`.

[antolin@colostate.edu@login11 002-unix-intro]$ cp fastq/DPCh_plate1_[^A-B]* fq_notAB/

[antolin@colostate.edu@login11 002-unix-intro]$ ls fq_notAB
DPCh_plate1_C05_S29.R1.fq.gz  DPCh_plate1_C12_S36.R2.fq.gz  DPCh_plate1_D12_S48.R1.fq.gz  DPCh_plate1_E11_S59.R2.fq.gz  DPCh_plate1_F11_S71.R1.fq.gz  DPCh_plate1_G06_S78.R2.fq.gz  DPCh_plate1_H06_S90.R1.fq.gz
DPCh_plate1_C05_S29.R2.fq.gz  DPCh_plate1_D05_S41.R1.fq.gz  DPCh_plate1_D12_S48.R2.fq.gz  DPCh_plate1_E12_S60.R1.fq.gz  DPCh_plate1_F11_S71.R2.fq.gz  DPCh_plate1_G11_S83.R1.fq.gz  DPCh_plate1_H06_S90.R2.fq.gz
DPCh_plate1_C06_S30.R1.fq.gz  DPCh_plate1_D05_S41.R2.fq.gz  DPCh_plate1_E05_S53.R1.fq.gz  DPCh_plate1_E12_S60.R2.fq.gz  DPCh_plate1_F12_S72.R1.fq.gz  DPCh_plate1_G11_S83.R2.fq.gz  DPCh_plate1_H11_S95.R1.fq.gz
DPCh_plate1_C06_S30.R2.fq.gz  DPCh_plate1_D06_S42.R1.fq.gz  DPCh_plate1_E05_S53.R2.fq.gz  DPCh_plate1_F05_S65.R1.fq.gz  DPCh_plate1_F12_S72.R2.fq.gz  DPCh_plate1_G12_S84.R1.fq.gz  DPCh_plate1_H11_S95.R2.fq.gz
DPCh_plate1_C11_S35.R1.fq.gz  DPCh_plate1_D06_S42.R2.fq.gz  DPCh_plate1_E06_S54.R1.fq.gz  DPCh_plate1_F05_S65.R2.fq.gz  DPCh_plate1_G05_S77.R1.fq.gz  DPCh_plate1_G12_S84.R2.fq.gz  DPCh_plate1_H12_S96.R1.fq.gz
DPCh_plate1_C11_S35.R2.fq.gz  DPCh_plate1_D11_S47.R1.fq.gz  DPCh_plate1_E06_S54.R2.fq.gz  DPCh_plate1_F06_S66.R1.fq.gz  DPCh_plate1_G05_S77.R2.fq.gz  DPCh_plate1_H05_S89.R1.fq.gz  DPCh_plate1_H12_S96.R2.fq.gz
DPCh_plate1_C12_S36.R1.fq.gz  DPCh_plate1_D11_S47.R2.fq.gz  DPCh_plate1_E11_S59.R1.fq.gz  DPCh_plate1_F06_S66.R2.fq.gz  DPCh_plate1_G06_S78.R1.fq.gz  DPCh_plate1_H05_S89.R2.fq.gz

#### Ex. 16: Remove `fq_AB` and `fq_notAB`, and their contents

[antolin@colostate.edu@login11 002-unix-intro]$ rm -r fq_*


#### Ex. 17: Using the `{,}` construct create five directories named 
####         `dir_A`, `dir_C`, `dir_E`, `dir_G`, and `dir_I`, and list them
####         (but not their contents) when you are done. (Think `ls -d`).

[antolin@colostate.edu@login11 002-unix-intro]$ mkdir dir_{A,C,E,G,I}
ls -d /projects/antolin@colostate.edu/con-gen-csu/assignments/002-unix-intro

[antolin@colostate.edu@login11 002-unix-intro]$ ls
bam  count_files.sh  dir_A  dir_C  dir_E  dir_G  dir_I  fastq  metadata  sam  silly  unix-intro-TEMPLATE.sh
[antolin@colostate.edu@login11 002-unix-intro]$ ls -d
.
[antolin@colostate.edu@login11 002-unix-intro]$

????

#### Ex. 18: Using globbing, remove `dir_A`, `dir_C`, `dir_E`, `dir_G`, and `dir_I`,
####         using a command with 8 characters (including spaces)

[antolin@colostate.edu@login11 002-unix-intro]$ rmdir dir_*
[antolin@colostate.edu@login11 002-unix-intro]$ ls
bam  count_files.sh  fastq  metadata  sam  silly  unix-intro-TEMPLATE.sh


#### Ex. 19: Create a directory called `nice_dir_name` and then use `echo`,
####         redirecting its output to create a file called `nice_file_name`
####         inside of `nice_dir_name` whose contents is the string
####         `A string in a file!`

[antolin@colostate.edu@login11 002-unix-intro]$ mkdir nice_dir_name


#### Ex. 20: Catenate the contents of `nice_dir_name/nice_file_name` to _stdout_




#### Ex. 21: Create a directory called `bad directory name with spaces`, and then,
####         with redirection, create a file inside it, named 
####         `bad file name with spaces` whose contents are the string
####         `Whoa! No spaces, please!`. Use backslash escaping instead of quoting




#### Ex. 22: Catenate the contents of 
####         `bad directory name with spaces/bad file name with spaces` to stdout.



#### Ex. 23: List the directories (just the names, not the contents (`-d`)) of
####         `bad directory name with spaces` and `nice_dir_name`.



#### Ex. 24: Once you are convinced that you can list the directories
####         correctly in your terminal, recall that `ls` command (i.e. get it back on the
####         command line using the up arrow on your keyboard) and replace `ls` with
####         `rm -r` to remove them. BE CAREFUL with the rm command!



#### Ex. 25: Why is it a good idea to `ls` things before removing them?



#### Ex. 26: If you had just typed `rm -r bad directory name with spaces` 
####         what would Unix have tried to remove? (No command to type here,
####         just answer the question).



#### Ex. 27: There are bam, sam, and fastq files, in the appropriately
####         named directories for sample `A05_S5`. Make a directory named `A05_S5`
####         and copy all those files into that new directory. List the directory
####         when you are done.



#### Ex. 28: remove the directory `A05_S5` and its contents



#### Ex. 29: Use `ls` to try to list the file `it_aint_here`



#### Ex. 30: Now, do the same thing but redirect _stderr_ into a file called 
####         `my_bad.txt`, and then catenate the contents of that file, and then remove it




#### Ex. 31: The files in `fastq` are text files, but they are all gzipped.
####         Using `gzcat` and a pipe, view the first 8 lines of 
####         `fastq/DPCh_plate1_C11_S35.R1.fq.gz`




#### Ex. 32: Do the same to see the first 8 lines of `fastq/DPCh_plate1_C11_S35.R2.fq.gz`




#### Ex. 33: What do you notice about the names of the two reads in each 
####         file (Lines 1 and 5, that start with a `@`)




#### Ex. 34: Print the date, redirect it to a file called `now.txt`,
####         catenate that file to _stdout_ and then remove it



#### Ex. 35: Count the number of lines/words/characters (using `wc`)
####         in the two SAM files in the `sam` directory



#### Ex. 36: Note that gzcat will decompress all files you give itand send the 
####         output to _stdout_. Knowing this, count how many lines are in each of 
####         the `R1` files in `fastq` (after decompressing them into text files),
####         and also count up all the lines in the `R1` files in `fastq`. 
####         Note they should be the same.



#### Ex. 37: Now, gzcat all the `R1` files in `fastq` and redirect that
####         to a file called `R1_all_via_gzcat.fq` in the top directory of the repo



#### Ex. 38: People are usually familiar with using `cat` to catenate text
####         files. It turns out that you can also catenate `gzip` compressed files. 
####         The result is another properly gzipped file that can be decompressed. 
####         Catenate all the gzipped `R1` files in `fastq` into a single (still gzipped)
####         file called `R1_all_via_cat.fq.gz`



#### Ex. 39: Copy `R1_all_via_cat.fq.gz` to `copy_of_R1_all_via_cat.fq.gz`




#### Ex. 40: Now, decompress `R1_all_via_cat.fq.gz` into `R1_all_via_cat.fq`




#### Ex. 41: Compute the SHA1 hashes of `R1_all_via_cat.fq` and `R1_all_via_gzcat.fq`
####         to confirm they are identical




#### Ex. 42: But now, gzip `R1_all_via_gzcat.fq` and compare the result to
####         `copy_of_R1_all_via_cat.fq.gz` by computing the SHA1 hash of each



#### Ex. 43: using `du` with the `-h` (i.e. "human readable" option) print the
####         file sizes of `R1_all_via_cat.fq` and `copy_of_R1_all_via_cat.fq.gz`.




#### Ex. 44: By what factor (approximately) does the compression save storage
####         space on your disk?




#### Ex. 45: Remove all files starting with `R1_all` and `copy_of_R1`




#### Ex. 46: Now, print the file sizes (with `du -h`, again) of the files
####         in `bam` to the files in `sam`




#### Ex. 47: Print the last 15 lines of `sam/DPCh_plate1_A05_S5.sam` to _stdout_




#### Ex. 48: Print the _first_ 15 lines of `sam/DPCh_plate1_A05_S5.sam` to _stdout_




#### Ex. 49: Catenate the file `count_files.sh` to _stdout_




#### Ex. 50: Note that `count_files.sh` is a short shell script. Try to 
####         execute it with `./count_files.sh`





#### Ex. 51: List (long) `count_files.sh` to see what the permissions are,
####         and then add execute (`x`) permissions to users and groups with
####         the "add-or-subtract permissions syntax" of `chmod`, then long list it again




#### Ex. 52: Use chmod to change permissions of the files in the `silly`
####         directory to match their names. For example for the first 
####         one you would use: `chmod 770 FILE-rwxrwx---`. Use the octal
####         specifiers to `chmod`. Do this for all 5 files (one chmod command for each),
####         and at the end do `ls -l silly` to verify they are correct.


