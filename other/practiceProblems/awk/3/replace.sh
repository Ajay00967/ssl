# input=$(echo $1)
# filter=$2

# out="output.txt"

# IFS=':'

# for line in $input ; do
#     read -ra arr <<< "$line"
#     echo ${arr[@]}
# done

#!/bin/bash

#!/bin/bash

mapping_file="$1"
paragraph_file="$2"

# Read the original paragraph into a variable
orig_paragraph=$(cat "$paragraph_file")

# Use awk to loop over mapping lines and work with a fresh copy of paragraph each time
awk -F: -v para="$orig_paragraph" '
{
    # fresh copy each time
    p = para
    gsub(/student_name/, $1, p)
    gsub(/roll_no/, $2, p)
    print p "\n"
}' "$mapping_file"

