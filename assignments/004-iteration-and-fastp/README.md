# 004-iteration-and-fastp

The purpose of this homework is to get everyone thinking about how to
iterate commands with different arguments using the bash shell's
`for` loop capability.

Keep in mind that there are many other ways of doing iteration, many
of which work better within the SLURM framework.  But we are doing this
mostly to illustrate the notion of iteration in the shell.

The steps to complete this homework are as follows:

1. Sync the main branch of your fork of the course repo to the
main branch of upstream (i.e., eriqande/con-gen-csu). This is done
on your GitHub page.
2. Make sure that you have switched to the `main` branch of your local
clone of your fork on Alpine:
    ```sh
    git switch main
    ```
    and then pull in the changes on main
    that you just synced:
    ```sh
    gitup
    git pull origin main
    ```
3. Now, immediately create a new branch called `fastp-iteration`,
and push it up to your fork of the repo.
    ```sh
    git checkout -B fastp-iteration
    git push -u origin fastp-iteration
    ```
4. Get onto a compute node on alpine:
    ```sh
    module load slurm/alpine
    srun --partition atesting --pty /bin/bash
    ```
4. Now edit the shell script, `assignments/004-iteration-and-fastp/script.sh`, as indicated in the
comments in the script, to make fastp run on all the different
samples in data/fastqs.
5. Run the script from the top level of the repo like this:
    ```sh
    ./assignments/004-iteration-and-fastp/script.sh
    ```
6. Note that the script does an sha1sum on the trimmed output files.  This
way we can quickly check if fastp is really reproducible (and that you
trimmed the files as expected.)
7. When you are satisfied with your script and its outputs, commit only the following files to your `fastp-iteration` branch: `assignments/004-iteration-and-fastp/script.sh` and `assignments/004-iteration-and-fastp/sha1_fastqs.txt`. This is done with:
    ```sh
    git add assignments/004-iteration-and-fastp/script.sh assignments/004-iteration-and-fastp/sha1_fastqs.txt
    git commit -m "Write your commit message between the quotes"
    ```
    where you can customize the commit message.

8. Push that commit (or those commits, if you made
multiple commits) to the `fastp-iteration` on your fork.
    ```sh
    git push origin fastp-iteration
    ```

9. Go to your GitHub page and send me a pull request.  That constitutes completion of the assignment.

