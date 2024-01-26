
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

(base) [mjhemm@colostate.edu@login-ci1 mjhemm@colostate.edu]$ cd
(base) [mjhemm@colostate.edu@login-ci1 ~]$ pwd
/home/mjhemm@colostate.edu

#### Ex. 2:  Use echo to print `my name is xxxx` to stdout.  Where `xxxx` is 
####        replaced by your name

(base) [mjhemm@colostate.edu@login-ci1 ~]$ echo "My name is Meg"
My name is Meg

#### Ex. 3:  Now, for real print your name, as in Ex. 2, but put your name in there:

Skip

#### Ex. 3.1 Change directories to the assignments/002-unix-intro directory in the con-gen-csu repo

cd /projects/mjhemm@colostate.edu/con-gen-csu/assignments/002-unix-intro/

#### Ex. 3: print the absolute path of the directory 002-unix-intro that you just changed into

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ pwd
/projects/mjhemm@colostate.edu/con-gen-csu/assignments/002-unix-intro

#### Ex. 4: list, in long format, all the files and directories in this homework directory

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ls -l
total 352
drwxr-sr-x. 2 mjhemm@colostate.edu mjhemmgrp@colostate.edu   80 Jan 23 10:50 bam
-rwxr-xr-x. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu  112 Jan 23 10:50 count_files.sh
drwxr-sr-x. 2 mjhemm@colostate.edu mjhemmgrp@colostate.edu 2940 Jan 23 10:50 fastq
drwxr-sr-x. 2 mjhemm@colostate.edu mjhemmgrp@colostate.edu   45 Jan 23 10:50 metadata
drwxr-sr-x. 2 mjhemm@colostate.edu mjhemmgrp@colostate.edu   80 Jan 23 10:50 sam
drwxr-sr-x. 3 mjhemm@colostate.edu mjhemmgrp@colostate.edu  159 Jan 23 10:50 silly
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu 9772 Jan 25 11:40 unix-intro.sh
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu 9425 Jan 23 10:50 unix-intro-TEMPLATE.sh


#### Ex. 4.5 Without changing directories do a long listing of the con-gen-csu directory

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ls -l ../../
total 240
drwxr-sr-x. 7 mjhemm@colostate.edu mjhemmgrp@colostate.edu   164 Jan 25 10:37 assignments
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu   205 Jan 23 10:50 con-gen-csu.Rproj
drwxr-sr-x. 5 mjhemm@colostate.edu mjhemmgrp@colostate.edu   125 Jan 23 10:50 data
drwxr-sr-x. 3 mjhemm@colostate.edu mjhemmgrp@colostate.edu    91 Jan 23 10:50 dev
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu 22464 Jan 25 10:37 README.md


#### Ex. 5: In the con-gen-csu directory there is a directory called `.git` that didn't get listed. 
####        List everything again, but make sure `.git` is in the output

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ls -al ../../
total 384
drwxr-sr-x. 6 mjhemm@colostate.edu mjhemmgrp@colostate.edu   184 Jan 25 10:37 .
drwxrws---. 7 mjhemm@colostate.edu mjhemmgrp@colostate.edu   183 Jan 23 10:49 ..
drwxr-sr-x. 7 mjhemm@colostate.edu mjhemmgrp@colostate.edu   164 Jan 25 10:37 assignments
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu   205 Jan 23 10:50 con-gen-csu.Rproj
drwxr-sr-x. 5 mjhemm@colostate.edu mjhemmgrp@colostate.edu   125 Jan 23 10:50 data
drwxr-sr-x. 3 mjhemm@colostate.edu mjhemmgrp@colostate.edu    91 Jan 23 10:50 dev
drwxr-sr-x. 8 mjhemm@colostate.edu mjhemmgrp@colostate.edu   322 Jan 25 11:40 .git
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu    52 Jan 23 10:50 .gitignore
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu 22464 Jan 25 10:37 README.md

#### Ex. 6: What are the other hidden files/directories that show up
####        in the above listing? Just list them below (no special command)
####        to get them, since you did that above)

drwxr-sr-x. 6 mjhemm@colostate.edu mjhemmgrp@colostate.edu   184 Jan 25 10:37 .
drwxrws---. 7 mjhemm@colostate.edu mjhemmgrp@colostate.edu   183 Jan 23 10:49 ..
drwxr-sr-x. 8 mjhemm@colostate.edu mjhemmgrp@colostate.edu   322 Jan 25 11:40 .git
-rw-r--r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu    52 Jan 23 10:50 .gitignore

#### Ex. 7: List (long format) the contents of the directory `.git` in the con-gen-csu directory

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ ls -l .git
total 552
drwxr-sr-x.  2 mjhemm@colostate.edu mjhemmgrp@colostate.edu     0 Jan 23 10:49 branches
-rw-r--r--.  1 mjhemm@colostate.edu mjhemmgrp@colostate.edu   334 Jan 25 11:40 config
-rw-r--r--.  1 mjhemm@colostate.edu mjhemmgrp@colostate.edu    73 Jan 23 10:49 description
-rw-r--r--.  1 mjhemm@colostate.edu mjhemmgrp@colostate.edu   209 Jan 25 11:40 FETCH_HEAD
-rw-r--r--.  1 mjhemm@colostate.edu mjhemmgrp@colostate.edu    27 Jan 25 11:40 HEAD
drwxr-sr-x.  2 mjhemm@colostate.edu mjhemmgrp@colostate.edu   487 Jan 23 10:49 hooks
-rw-r--r--.  1 mjhemm@colostate.edu mjhemmgrp@colostate.edu 16032 Jan 25 11:40 index
drwxr-sr-x.  2 mjhemm@colostate.edu mjhemmgrp@colostate.edu    25 Jan 23 10:49 info
drwxr-sr-x.  3 mjhemm@colostate.edu mjhemmgrp@colostate.edu    44 Jan 23 10:50 logs
drwxr-sr-x. 43 mjhemm@colostate.edu mjhemmgrp@colostate.edu   824 Jan 25 11:40 objects
-rw-r--r--.  1 mjhemm@colostate.edu mjhemmgrp@colostate.edu    41 Jan 25 10:37 ORIG_HEAD
-rw-r--r--.  1 mjhemm@colostate.edu mjhemmgrp@colostate.edu   112 Jan 23 10:50 packed-refs
drwxr-sr-x.  5 mjhemm@colostate.edu mjhemmgrp@colostate.edu    70 Jan 23 10:50 refs

#### Ex. 8: If you wanted to type `ls fastq/DPCh_plate1_A06_S6.R1.fq.gz`
####        on the command line, what is the fewest keystrokes that can
####        get you `fastq/DPCh_plate1_A06_S6.R1.fq.gz` using TAB completion?

ls fastq/DPCh_plate1_A06_S6.R1


#### Ex. 9: Make a new directory called `lonely-fastqs`, and inside of that,
####        two directories R1 and R2.

mkdir lonely-fastqs
cd lonely-fastqs/
mkdir R1 R2

#### Ex. 10: Copy (not move) all the read1 (`R1`) fastq files in `fastqs`
####         into `lonely-fastqs/R1` and all the read2 fastqs into 
####         `lonely-fastqs/R2`. When you are done, list the contents of 
####         `lonely-fastqs/R1` and `lonely-fastqs/R2`

(base) [mjhemm@colostate.edu@login-ci1 lonely-fastqs]$ cd R1/
(base) [mjhemm@colostate.edu@login-ci1 R1]$ ls
DPCh_plate1_A05_S5.R1.fq.gz   DPCh_plate1_B11_S23.R1.fq.gz  DPCh_plate1_D05_S41.R1.fq.gz  DPCh_plate1_E11_S59.R1.fq.gz  DPCh_plate1_G05_S77.R1.fq.gz  DPCh_plate1_H11_S95.R1.fq.gz
DPCh_plate1_A06_S6.R1.fq.gz   DPCh_plate1_B12_S24.R1.fq.gz  DPCh_plate1_D06_S42.R1.fq.gz  DPCh_plate1_E12_S60.R1.fq.gz  DPCh_plate1_G06_S78.R1.fq.gz  DPCh_plate1_H12_S96.R1.fq.gz
DPCh_plate1_A11_S11.R1.fq.gz  DPCh_plate1_C05_S29.R1.fq.gz  DPCh_plate1_D11_S47.R1.fq.gz  DPCh_plate1_F05_S65.R1.fq.gz  DPCh_plate1_G11_S83.R1.fq.gz
DPCh_plate1_A12_S12.R1.fq.gz  DPCh_plate1_C06_S30.R1.fq.gz  DPCh_plate1_D12_S48.R1.fq.gz  DPCh_plate1_F06_S66.R1.fq.gz  DPCh_plate1_G12_S84.R1.fq.gz
DPCh_plate1_B05_S17.R1.fq.gz  DPCh_plate1_C11_S35.R1.fq.gz  DPCh_plate1_E05_S53.R1.fq.gz  DPCh_plate1_F11_S71.R1.fq.gz  DPCh_plate1_H05_S89.R1.fq.gz
DPCh_plate1_B06_S18.R1.fq.gz  DPCh_plate1_C12_S36.R1.fq.gz  DPCh_plate1_E06_S54.R1.fq.gz  DPCh_plate1_F12_S72.R1.fq.gz  DPCh_plate1_H06_S90.R1.fq.gz

(base) [mjhemm@colostate.edu@login-ci1 R1]$ cd ../R2/
(base) [mjhemm@colostate.edu@login-ci1 R2]$ ls
DPCh_plate1_A05_S5.R2.fq.gz   DPCh_plate1_B11_S23.R2.fq.gz  DPCh_plate1_D05_S41.R2.fq.gz  DPCh_plate1_E11_S59.R2.fq.gz  DPCh_plate1_G05_S77.R2.fq.gz  DPCh_plate1_H11_S95.R2.fq.gz
DPCh_plate1_A06_S6.R2.fq.gz   DPCh_plate1_B12_S24.R2.fq.gz  DPCh_plate1_D06_S42.R2.fq.gz  DPCh_plate1_E12_S60.R2.fq.gz  DPCh_plate1_G06_S78.R2.fq.gz  DPCh_plate1_H12_S96.R2.fq.gz
DPCh_plate1_A11_S11.R2.fq.gz  DPCh_plate1_C05_S29.R2.fq.gz  DPCh_plate1_D11_S47.R2.fq.gz  DPCh_plate1_F05_S65.R2.fq.gz  DPCh_plate1_G11_S83.R2.fq.gz
DPCh_plate1_A12_S12.R2.fq.gz  DPCh_plate1_C06_S30.R2.fq.gz  DPCh_plate1_D12_S48.R2.fq.gz  DPCh_plate1_F06_S66.R2.fq.gz  DPCh_plate1_G12_S84.R2.fq.gz
DPCh_plate1_B05_S17.R2.fq.gz  DPCh_plate1_C11_S35.R2.fq.gz  DPCh_plate1_E05_S53.R2.fq.gz  DPCh_plate1_F11_S71.R2.fq.gz  DPCh_plate1_H05_S89.R2.fq.gz
DPCh_plate1_B06_S18.R2.fq.gz  DPCh_plate1_C12_S36.R2.fq.gz  DPCh_plate1_E06_S54.R2.fq.gz  DPCh_plate1_F12_S72.R2.fq.gz  DPCh_plate1_H06_S90.R2.fq.gz

#### Ex. 11: do a recursive, short listing of the contents of `lonely-fastqs`

(base) [mjhemm@colostate.edu@login-ci1 R2]$ ls ../
R1  R2

#### Ex. 12: Use the recursive (-r) option to remove `lonely-fastqs`
####         and its contents

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ rm -r lonely-fastqs/

#### Ex. 13: Make two new directories in the top level of the
####         repo called `fq_AB` and `fq_notAB`

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ mkdir fq_AB fq_notAB

#### Ex. 14: Using the `[` `]` copy the R1 files in `fastqs` that
####         belong to sample names (the part immediately after `DPCh_plate1_`)
####         starting with an `A` or `B` to `fq_AB`.

(base) [mjhemm@colostate.edu@login-ci1 fastq]$ cp DPCh_plate1_[A-B]* ../../../fq_AB/

#### Ex. 15: Now, using negation (`^`) with `[` and `]` copy all the
####         R1 files that don't belong to sample names starting with an
####         `A` or a `B` to `fq_notAB`. When you are done, on the next line in
####         the code block, list the contents of `fq_AB` and `fq_notAB`.

(base) [mjhemm@colostate.edu@login-ci1 fastq]$ cp DPCh_plate1_[^A-B]* ../../../fq_notAB/

#### Ex. 16: Remove `fq_AB` and `fq_notAB`, and their contents

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ rm -r fq_AB/ fq_notAB/

#### Ex. 17: Using the `{,}` construct create five directories named 
####         `dir_A`, `dir_C`, `dir_E`, `dir_G`, and `dir_I`, and list them
####         (but not their contents) when you are done. (Think `ls -d`).

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ mkdir dir_{A,C,E,G,I}
(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ ls -d dir_*
dir_A  dir_C  dir_E  dir_G  dir_I

#### Ex. 18: Using globbing, remove `dir_A`, `dir_C`, `dir_E`, `dir_G`, and `dir_I`,
####         using a command with 8 characters (including spaces)

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ rm -r dir_*

#### Ex. 19: Create a directory called `nice_dir_name` and then use `echo`,
####         redirecting its output to create a file called `nice_file_name`
####         inside of `nice_dir_name` whose contents is the string
####         `A string in a file!`

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ mkdir nice_dir_name
(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ echo "A string in a file!" > nice_dir_name/nice_file_name

#### Ex. 20: Catenate the contents of `nice_dir_name/nice_file_name` to _stdout_

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ cat nice_dir_name/nice_file_name 
A string in a file!

#### Ex. 21: Create a directory called `bad directory name with spaces`, and then,
####         with redirection, create a file inside it, named 
####         `bad file name with spaces` whose contents are the string
####         `Whoa! No spaces, please!`. Use backslash escaping instead of quoting

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ mkdir bad\ directory\ name\ with\ spaces
(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ echo "Whoa! No spaces, please" > bad\ directory\ name\ with\ spaces/bad\ fi
le\ name\ with\ spaces

#### Ex. 22: Catenate the contents of 
####         `bad directory name with spaces/bad file name with spaces` to stdout.

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ cat bad\ directory\ name\ with\ spaces/bad\ file\ name\ with\ spaces 
Whoa! No spaces, please!

#### Ex. 23: List the directories (just the names, not the contents (`-d`)) of
####         `bad directory name with spaces` and `nice_dir_name`.

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ ls -d bad\ directory\ name\ with\ spaces/ nice_dir_name/
'bad directory name with spaces/'   nice_dir_name/

#### Ex. 24: Once you are convinced that you can list the directories
####         correctly in your terminal, recall that `ls` command (i.e. get it back on the
####         command line using the up arrow on your keyboard) and replace `ls` with
####         `rm -r` to remove them. BE CAREFUL with the rm command!

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ rm -r -d bad\ directory\ name\ with\ spaces/ nice_dir_name/

#### Ex. 25: Why is it a good idea to `ls` things before removing them?

It is a good idea to make sure you are removing the thing you want to. This can be double-checked using ls (TAB is another good option).  

#### Ex. 26: If you had just typed `rm -r bad directory name with spaces` 
####         what would Unix have tried to remove? (No command to type here,
####         just answer the question).

Linux would be looking for a directory called bad and would have given an error that it could not find it. 

#### Ex. 27: There are bam, sam, and fastq files, in the appropriately
####         named directories for sample `A05_S5`. Make a directory named `A05_S5`
####         and copy all those files into that new directory. List the directory
####         when you are done.

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ cd A05_S5/
(base) [mjhemm@colostate.edu@login-ci1 A05_S5]$ ls
DPCh_plate1_A05_S5.bam  DPCh_plate1_A05_S5.R1.fq.gz  DPCh_plate1_A05_S5.R2.fq.gz  DPCh_plate1_A05_S5.sam

#### Ex. 28: remove the directory `A05_S5` and its contents

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ rm -r A05_S5/

#### Ex. 29: Use `ls` to try to list the file `it_aint_here`

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ls it_aint_here
ls: cannot access 'it_aint_here': No such file or directory

#### Ex. 30: Now, do the same thing but redirect _stderr_ into a file called 
####         `my_bad.txt`, and then catenate the contents of that file, and then remove it

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ls it_aint_here 2> my_bad.txt
(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ cat my_bad.txt 
ls: cannot access 'it_aint_here': No such file or directory
(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ rm my_bad.txt 

#### Ex. 31: The files in `fastq` are text files, but they are all gzipped.
####         Using `gzcat` and a pipe, view the first 8 lines of 
####         `fastq/DPCh_plate1_C11_S35.R1.fq.gz`

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ gunzip -c fastq/DPCh_plate1_C11_S35.R1.fq.gz | cat | head -n 8
@K00364:64:HTYYCBBXX:1:1101:1824:48192/1
GTAGAATAATAGTGAATCAAATCAAATGTTATTTGTCACATGCGCTGAATACAACAGGTGTGGACCTTACAGTGAAATGCTTCCTTACAAGCCCTTAACCAACAATGCAGTTTTAAGAAAAATGAGTGTGAGATAAGTAAAAAATAGAAAA
+
AAFFFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJAJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJ7JJJJJJFFFFJJJJJJ7A7AJJAFAJJJJJFJJJJ-<JFJ-FFFJJJ
@K00364:64:HTYYCBBXX:1:1101:2869:22080/1
TTAAAACACGGTATGATGCAAGCAGCACAACACATCAATAACAAAAATACAAGAATTAGGGTCAGAAATCCAGTAACCACCATACTAGTGTACTTACCAAACCAGGCTCCCAACCAAGAGAACAGTCCAGACTCCTCCACCCTCGCCATGG
+
-AAFFJJJJJJJJJJJJFFJJJFJFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFFJJJ<JJJJJJFFFFJFFJJJJJJAFJJJJJJJJJJJJJJJJJJFAJJJJJJJJJJJJJJJJJJJFJJJFAJJJJJJJFJJJJJJJJFFJJ


#### Ex. 32: Do the same to see the first 8 lines of `fastq/DPCh_plate1_C11_S35.R2.fq.gz`

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ gunzip -c fastq/DPCh_plate1_C11_S35.R2.fq.gz | cat | head -n 8
@K00364:64:HTYYCBBXX:1:1101:1824:48192/2
CACAAGGAACGACAGAGGGTAGTGCGTACGGCCCAGCACATCACTGGGACCAAGCATCCTGCAATCCAGGACCTCCATACCAGGCGGTGTCAGAGGAAGGCCCTAAAATTGTCAAAGACTCCAGCCACCCTAGTCATTAACTCTTCGCTCT
+
A<-A-<-F<AJ-<---<<--<-<-7FFJ-77A<-<--7-<7-<-7<J<77A<--7-AAA7-AF-7FAF<-<FJ---7-77FJA7-77F7FFJ7F<--<--77)A7FA-A7-<---7<<F7-<-7<))7--)<)7<AF----7<<<<-)-7)
@K00364:64:HTYYCBBXX:1:1101:2869:22080/2
CTATGATCAACAGCGTTTTGTGATTTACCCCCGTGATGCACTCACTGGTATGTCTGAACAGCTTGAGGCCACATCTAGGGTTGCCAGACAGAATAGACTTGCTTTGGATATGCTTCTTGCCAGTCAGGGGGGTGTCTGTAAGATGTTCGGT
+
AAAFAFJJJJJJJJJJ-FJJJJJJFJJJJFJJJJJJJJJJJJJFJFFJFFFFFFJFFJJJFJFAAA777AAJJJAA--A<-A<-JJA-<JFJJJ-7<-AAJJFJJJ<JJ<JAFFFF---7<<7777<)7<<-<777-<-7--<FJJ<F-<<

#### Ex. 33: What do you notice about the names of the two reads in each 
####         file (Lines 1 and 5, that start with a `@`)

The names are matching in the two reads (K00364).

#### Ex. 34: Print the date, redirect it to a file called `now.txt`,
####         catenate that file to _stdout_ and then remove it

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ date > now.txt
(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ cat now.txt 
Thu Jan 25 16:55:07 MST 2024
(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ rm now.txt 

#### Ex. 35: Count the number of lines/words/characters (using `wc`)
####         in the two SAM files in the `sam` directory

(base) [mjhemm@colostate.edu@login-ci1 sam]$ wc *.sam
 14219  45092 511203 DPCh_plate1_A05_S5.sam
 14150  43985 479977 DPCh_plate1_A06_S6.sam
 28369  89077 991180 total


#### Ex. 36: Note that gzcat will decompress all files you give itand send the 
####         output to _stdout_. Knowing this, count how many lines are in each of 
####         the `R1` files in `fastq` (after decompressing them into text files),
####         and also count up all the lines in the `R1` files in `fastq`. 
####         Note they should be the same.

(base) [mjhemm@colostate.edu@login-ci1 fastq]$ gunzip -c *R1.fq.gz | cat | wc
  19364   19364 1678394

I wasn't sure about the difference between the two counting methods.

#### Ex. 37: Now, gzcat all the `R1` files in `fastq` and redirect that
####         to a file called `R1_all_via_gzcat.fq` in the top directory of the repo

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ gunzip -c fastq/*R1.fq.gz | cat > ../../R1_all_via_gzcat.fq

#### Ex. 38: People are usually familiar with using `cat` to catenate text
####         files. It turns out that you can also catenate `gzip` compressed files. 
####         The result is another properly gzipped file that can be decompressed. 
####         Catenate all the gzipped `R1` files in `fastq` into a single (still gzipped)
####         file called `R1_all_via_cat.fq.gz`

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ cat fastq/*R1.fq.gz > ../../R1_all_via_cat.fq.gz


#### Ex. 39: Copy `R1_all_via_cat.fq.gz` to `copy_of_R1_all_via_cat.fq.gz`

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ cp R1_all_via_cat.fq.gz copy_R1_all_via_cat.fq.gz


#### Ex. 40: Now, decompress `R1_all_via_cat.fq.gz` into `R1_all_via_cat.fq`

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ gunzip R1_all_via_cat.fq.gz 


#### Ex. 41: Compute the SHA1 hashes of `R1_all_via_cat.fq` and `R1_all_via_gzcat.fq`
####         to confirm they are identical

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ shasum R1_all_via_cat.fq 
d5b95bf950e8150c56aed90eea9febeb23ddd856  R1_all_via_cat.fq

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ shasum R1_all_via_gzcat.fq 
d5b95bf950e8150c56aed90eea9febeb23ddd856  R1_all_via_gzcat.fq


#### Ex. 42: But now, gzip `R1_all_via_gzcat.fq` and compare the result to
####         `copy_of_R1_all_via_cat.fq.gz` by computing the SHA1 hash of each

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ shasum R1_all_via_gzcat.fq.gz 
688985c86681225a3ffe63b6faf4e95af59a67af  R1_all_via_gzcat.fq.gz

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ shasum copy_R1_all_via_cat.fq.gz 
9d5483b86b405ab7d0759dbc59202b08395d2462  copy_R1_all_via_cat.fq.gz


#### Ex. 43: using `du` with the `-h` (i.e. "human readable" option) print the
####         file sizes of `R1_all_via_cat.fq` and `copy_of_R1_all_via_cat.fq.gz`.

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ du -h R1_all_via_cat.fq 
2.4M    R1_all_via_cat.fq

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ du -h copy_R1_all_via_cat.fq.gz 
704K    copy_R1_all_via_cat.fq.gz

#### Ex. 44: By what factor (approximately) does the compression save storage
####         space on your disk?

The compression saved storage space on my disk by a factor of ~3.41.


#### Ex. 45: Remove all files starting with `R1_all` and `copy_of_R1`

(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ ls
assignments  con-gen-csu.Rproj  copy_R1_all_via_cat.fq.gz  data  dev  R1_all_via_cat.fq  R1_all_via_gzcat.fq.gz  README.md
(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ rm R1_all*
(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ ls
assignments  con-gen-csu.Rproj  copy_R1_all_via_cat.fq.gz  data  dev  README.md
(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ rm copy_R1_all_via_cat.fq.gz 
(base) [mjhemm@colostate.edu@login-ci1 con-gen-csu]$ ls
assignments  con-gen-csu.Rproj  data  dev  README.md


#### Ex. 46: Now, print the file sizes (with `du -h`, again) of the files
####         in `bam` to the files in `sam`

(base) [mjhemm@colostate.edu@login-ci1 bam]$ du -h *bam
408K    DPCh_plate1_A05_S5.bam
384K    DPCh_plate1_A06_S6.bam

(base) [mjhemm@colostate.edu@login-ci1 sam]$ du -h *.sam
784K    DPCh_plate1_A05_S5.sam
752K    DPCh_plate1_A06_S6.sam


#### Ex. 47: Print the last 15 lines of `sam/DPCh_plate1_A05_S5.sam` to _stdout_

(base) [mjhemm@colostate.edu@login-ci1 sam]$ tail -n 15 DPCh_plate1_A05_S5.sam 
K00364:64:HTYYCBBXX:5:2219:32491:45906  163     NC_037124.1     4019310 60      151M    =       4019351 192     TAAAATACACATTCAGATCTCGCCATCAACCGTTGTTAAATGTTGATTAATCAAAGGGTGAACATTTTCCCGAGTGCAAATTTAAAG
CGCCGTTAATTTAAGGCTTTTGCAGATGCGTCTTGGCTGACTGTGTGTGTGTTTACCAAGACTC        AAFFFFJJJJJFJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJFJJJFFJJJJJJJJJJJJJJJFJAJJJJJJJJFF7FJJJFJJJJJJJJFFA<JJFAJJFFFJJAAFFAFJAFFJJJJFJ7AFAJA
JFJJJFJJFFJFFFJJFJFFJJJJ        NM:i:0  MD:Z:151        AS:i:151        XS:i:0  RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:5:2219:32491:45906  83      NC_037124.1     4019351 60      151M    =       4019310 -192    NTTGATTAATCAAAGGGTGAACATTTTCCCGAGTGCAAATTTAAAGCGCCGTTAATTTAAGGCTTTTGCAGATGCGTCTTGGCTGAC
TGTGTGTGTGTTTTCCAAGACTCAAACAGTCACCCTGCGCTACCTTGTACGTGAAGCAAAAATA        #AJJJJ<7J<JJJFJJJJJFJJJJJAFJJJJJJJJJJJJJJJJJA<JJJJJJJJJAFJJJJJJJJJJJJJJJJFAF-FJJJJJJJFJJJ7JJJJJJJJJJ<JJJJJJJJJJJJJFJJJJFJJJJJJJ
JJJJJJJJJJJJJJJJJJJFFFAA        NM:i:2  MD:Z:0G99A50    AS:i:145        XS:i:20 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:5:2217:2757:32402   163     NC_037124.1     4019543 60      151M    =       4019783 391     TAAAGAATACTCCTAGTATACATATTTGCGAGATCGTTATAAACGCTTAATGGCATAGATACGCATCCTACCTGGAAGATGTTCGGC
GCGGCGGTTGCAGTTCCCCTGCGCCCAGCTTCAGTCGCTGAGAGCACAGCACAGCCCTTCTGCT        AAFFFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJFJJJJJJJJJJJJJJJFJJJ
JJJJJFJFJJFJJJJJJJJJJJJ-        NM:i:0  MD:Z:151        AS:i:151        XS:i:75 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:3:2222:22790:35637  83      NC_037124.1     4019572 60      151M    =       4019309 -414    GAGATCGTTATAAACGCTTAATGGCATAGATACGCATCCTACCTGGAAGATGTTCGGCGCGGAGGTTGCAGTTCCCCTGCGCCCAGC
TTCAGTCGCTGAGAGCACAGCACAGCCCTTCTGCTGAGCATGCCTATAACGATAGGGGAGGACG        JJJJAJJJJAFJAJJJJFA7JJJJJJFJJJFJJJJJFJJJFJJJJJJJJJJJJFJJJJJJJJJJJFJJJJJJAJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ
JJJJJJJJJJJJJJJJJJJFFFAA        NM:i:1  MD:Z:62C88      AS:i:146        XS:i:76 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:2:1127:28879:16506  163     NC_037124.1     4019741 60      151M    =       4020629 1039    TGTTCTTCTCAAGCGCTCAACCAGCCGCTACACTGTGCGTTCGTTGTTCGTTAAAAAGGGATTTCAAAATGGTTTCTTCCAAACTGT
GTAATACCTTGTTTTTTTCTTGCCCGAGGCCGTAATAAATGCTTCCCCTATCATTGTGTGTTCA        <--AAAJJJFJJ<AJA<FJJFFJFF-A--FF7AFF-<-A<7AF-----777-<7F<FF7<7<-<7A<-7F-<--7AAAA<A-A777A---7-F-7--7--7-A<FJAF7<---))-7AF)A-FF---
----7))))7----77--------        NM:i:8  MD:Z:17A75A17A5A1A8T5A14T1      AS:i:114        XS:i:47 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:5:2217:2757:32402   83      NC_037124.1     4019783 60      151M    =       4019543 -391    GTTGTTCGTTAAAAAGGGATTTCAAAATGGTTTCTTCCAAACTGTGTAATAACTTGTTTTTTTGTTGCCAGAGGCAGAAATAAATGT
TTCCCATATCATTGTGTGTTTATATTGAAACGAGTATCCGTACATACAGAGCCATTTATTCCAT        FJJJJJJJJJJJJJJJJJJJJJFJFAFFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ
JJJJJJJJJJJJJJJJJJJFFFAA        NM:i:1  MD:Z:63C87      AS:i:146        XS:i:45 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:4:1127:8014:6695    163     NC_037124.1     4020266 60      151M    =       4020326 211     CCTTTTGCTCTCTGATGTTATTTCCAATCGCACACCAAAAAAGTGGGGGAAATAAAGCTTTTCTTGTCTGATGACTGGATTGCAAGT
CCTCCATCCCCTCCCTCTGCTATTTACTGTAGGCCTACGTTGTCTTAGCTTGCATCACAAATAC        AAFFFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFF<<JJJ7AJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJ
JFJJJJJJJJJJJJJJJJJJJJJJ        NM:i:0  MD:Z:151        AS:i:151        XS:i:0  RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:4:1127:8014:6695    83      NC_037124.1     4020326 60      151M    =       4020266 -211    TTCTTGTCTGATGACTGGATTGCAAGTCCTCCATCCCCTCCCTCTGCTATTTACTGTAGGCCTACGTTGTCTTAGCTTGCATCACAA
ATACCACCATATTCTCTACACAGTGCACTACTTTTGACCTACTATTAACGAGAGCCCTGGACAA        JJJJJJJJJJJJJJJJJJFFJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ
JJJJJJJFJJJJJJJJJJJFFAAA        NM:i:0  MD:Z:151        AS:i:151        XS:i:19 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:2:1127:28879:16506  83      NC_037124.1     4020629 60      151M    =       4019741 -1039   TCAAAGTGCAGTATGTCACAGTTGGCACAGGAAGGAAGGTCTGAACAGAGTGCATTTAATTAACCAAGCTGTCTTGGCATTGGACGG
GAGGGGGGACACTCACTGGCGAGTCATCACCATCCACCATGCACCACCAAGGGCATGTTTCAGC        A<JF7FFA7AJJJJJJJJJJF-JJFJJJFAJJFF<JF<AJJFFFFFJJJFJJJJJJJFJJJFJJJFFJJJJJJJJJJJJJJJJFJJJJFJJJJFJJJJJJJJJJJJJJJJFJJJJJJJJJJJJJJJJ
FFJJJJJJJFJFJJJJJJJFFFAA        NM:i:0  MD:Z:151        AS:i:151        XS:i:0  RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:4:2127:4838:48139   83      NC_037124.1     4020809 60      50S101M =       4020809 -101    AGATCTGATCGTGTGACTGGAGTTCAGACGTGTGCTCTTCCGATCTTTATCACCGACGGAACATGCTGCTGTGCTGTCTGTGGAAAA
CTGTGCTCTGATAGTACATGCTTTTTAGGAATGTTGTCAGTGGTAGTACAGTGCCAGTCAGGAG        AJ<JJAFAFJFJFJJJAFJFJJJFJJJFFAFJAFFJJJJJJFFFAJJAF7JJJJJJJJJJJFJJJFFFJJJFFJJJJFFFJJFJJFJFJAFF7JJFJJ<JFFJFJJJJJJJJJFFJJJJJFJF<<JJ
JJJJJFJJAJJJJAFAFAFAA-AA        NM:i:2  MD:Z:6G91T2     AS:i:93 XS:i:0  RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:4:2127:4838:48139   163     NC_037124.1     4020809 60      4S101M46S       =       4020809 101     CTATCACCGACGGAACATGCTGCTGTGCTGTCTGTGGAAAACTGTGCTCTGATAGTACATGCTTTTTAGGAATGTTGTC
AGTGGTAGTACAGTGCCAGTCAGTAGAGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTCTTCACCAGTGTA        -AAAFFJJJ<JJJJJJFJJJJJJJJJJFJJJJJJJFJJJFFAJJFJJFJJJFAAJJJJFJJFJ7JJJJJF7<JFJJJJJJJJFJJJJJJJJJJJFFJF7JFJFJFFJFJJJFJJAJJ<J
JFFAAJJJJJFJJJJA<<7FAFJJ<-A<FJJ-        NM:i:1  MD:Z:6G94       AS:i:96 XS:i:0  RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:5:2202:4553:14414   83      NC_037124.1     4020960 60      3S148M  =       4020960 -148    TCTGATATGTTAGTCTCTTCTCTTACTGTAGAGGGTCCAGTAGTCTCTGTTTTTACTGTAGAGAGTGCATATTAGTCTTTCATTTTT
ATATTTGGACTCATTTACTCCATTATGATGGATGTGTCTGAAATGGCACCCTATTCCCTATATC        <FJA-F--J<J<7FJJJAAJAJFJFFJFF7<<<JJJFJJJAJJJJJJJJJJJFJJJJFFJA<FJJJFFJFFF<JJFJJJFAJJFJJF7<FAAJAAAJFFJJFFFFJJJJJJFJ<JJFJJFFFJJFFJF---A<JAFFJJJFJJAJJFAAAA        NM:i:0  MD:Z:148        AS:i:148        XS:i:20 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:5:2202:4553:14414   163     NC_037124.1     4020960 60      149M2S  =       4020960 148     GATATGTTAGTCTCTTCTCTTACTGTAGAGGGTCCAGTAGTCTCTGTTTTTACTGTAGAGAGTGCATATTAGTCTTTCATTTTTATATTTGGACTCATTTACTCCATTATGATGGATGTGTCTGAAATGGCACCCTATTCCCTATATCAGA        AAFAFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFFJJFJJFJJJJJJJJJJJJJFFJJJJJJJJJJJJJFFJJJJJJJJJJJJJJJJJFAJAFJJJJFFJJAJFJJJAJJJJJJJJJJAJJJJJJJFFF        NM:i:0  MD:Z:149        AS:i:149        XS:i:26 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:6:2208:11931:34266  147     NC_037124.1     4021195 60      29S122M =       4021195 -122    TCTTTCCCTACACGACGCTCTTCCGATCTCAGCCGTATCTCCCGCCACAGGAATCACCAGGCTCTGAGTGAGTGCTGCATCATCTCTTCCAGCACTTTCAAATACTTTGACTTTTTGCTTTGCCCTTCCTGGAGTGCCAGATGAAGTAGGG        FJJJJJJJJJJJJJAJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFFFAA        NM:i:1  MD:Z:12G109     AS:i:117        XS:i:20 RG:Z:DPCh_plate1_A05_S5
K00364:64:HTYYCBBXX:6:2208:11931:34266  99      NC_037124.1     4021195 60      122M29S =       4021195 122     CAGCCGTATCTCCCGCCACAGGAATCACCAGGCTCTGAGTGAGTGCTGCATCATCTCTTCCAGCACTTTCAAATACTTTGACTTTTTGCTTTGCCCTTCCTGGAGTGCCAGATGAAGTAGGGAGATCGGAAGAGCACACGTCTGAACTCCA        AAFFFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJFJJJJJJJFJ
JJJJJJJJJJJJJJJJJJJJJJJA        NM:i:1  MD:Z:12G109     AS:i:117        XS:i:20 RG:Z:DPCh_plate1_A05_S5


#### Ex. 48: Print the _first_ 15 lines of `sam/DPCh_plate1_A05_S5.sam` to _stdout_

(base) [mjhemm@colostate.edu@login-ci1 sam]$ head -n 15 DPCh_plate1_A05_S5.sam 
@HD     VN:1.3  SO:coordinate
@SQ     SN:NC_037097.1  LN:96198142
@SQ     SN:NC_037098.1  LN:57406636
@SQ     SN:NC_037099.1  LN:81079776
@SQ     SN:NC_037100.1  LN:74299616
@SQ     SN:NC_037101.1  LN:93271540
@SQ     SN:NC_037102.1  LN:77009353
@SQ     SN:NC_037103.1  LN:86953105
@SQ     SN:NC_037104.1  LN:73297397
@SQ     SN:NC_037105.1  LN:90872356
@SQ     SN:NC_037106.1  LN:60898746
@SQ     SN:NC_037107.1  LN:48052637
@SQ     SN:NC_037108.1  LN:77127610
@SQ     SN:NC_037109.1  LN:75288599
@SQ     SN:NC_037110.1  LN:55471129


#### Ex. 49: Catenate the file `count_files.sh` to _stdout_

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ cat count_files.sh 
# This looks fun
ls -lR  * | awk 'NF>7' | wc | awk '{print "Estimated", $1, "files in the current directory"}'


#### Ex. 50: Note that `count_files.sh` is a short shell script. Try to 
####         execute it with `./count_files.sh`


(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ./count_files.sh
Estimated 77 files in the current directory


#### Ex. 51: List (long) `count_files.sh` to see what the permissions are,
####         and then add execute (`x`) permissions to users and groups with
####         the "add-or-subtract permissions syntax" of `chmod`, then long list it again

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ls -l count_files.sh 
-rwxr-xr-x. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu 112 Jan 23 10:50 count_files.sh

(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ chmod u+x,g+x count_files.sh
(base) [mjhemm@colostate.edu@login-ci1 002-unix-intro]$ ls -l count_files.sh 
-rwxr-xr-x. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu 112 Jan 23 10:50 count_files.sh

#### Ex. 52: Use chmod to change permissions of the files in the `silly`
####         directory to match their names. For example for the first 
####         one you would use: `chmod 770 FILE-rwxrwx---`. Use the octal
####         specifiers to `chmod`. Do this for all 5 files (one chmod command for each),
####         and at the end do `ls -l silly` to verify they are correct.

(base) [mjhemm@colostate.edu@login-ci1 silly]$ ls -l
total 128
drwxr-sr-x. 2 mjhemm@colostate.edu mjhemmgrp@colostate.edu 23 Jan 23 10:50 DIRdrwxrwxr-x
-rw-r-----. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu  0 Jan 23 10:50 FILE-rw-r-----
-rw-rw-r--. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu  0 Jan 23 10:50 FILE-rw-rw-r--
-rwxr-----. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu  0 Jan 23 10:50 FILE-rwxr-----
-rwxrwx---. 1 mjhemm@colostate.edu mjhemmgrp@colostate.edu  0 Jan 23 10:50 FILE-rwxrwxr--

