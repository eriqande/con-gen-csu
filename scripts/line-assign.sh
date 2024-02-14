# simple script.  Arguments are:
#  1. The index to pick out (like 1, or 2, or 7, etc)
#  2. Path to a TAB delimited file with the first column named index
#     and subsequent columns named valid shell variable names.
#
# This script will pick out the line that matches $1, and return a command
# line assigning the column header names as shell variables whose values are the
# values in each cell in the file $2.
#
# Note: this is not written with a whole lot of error checking or catching.
#


if [ $# -ne 2 ]; then
  echo "Wrong number of arguments in $0 " > /dev/stderr
fi

awk -F"\t" -v LINE=$1 '
  $1 == "index" {for(i=1; i<=NF; i++) vars[i]=$i; next}
  $1 == LINE {for(i=1; i<=NF; i++) printf("%s=\"%s\"; ", vars[i], $i); printf("\n");}
' $2

