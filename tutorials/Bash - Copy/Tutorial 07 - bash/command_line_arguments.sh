#! /bin/bash
# Author: Kavya Gupta
# This script demonstrates command-line argument handling in Bash.

# NOTE: Run the script as => ./command_line_arguments.sh <roll_number> <age> <name>

# 1. Positional Parameters:
# Arguments passed to a script are processed in the order they're sent.
# The indexing starts at one, so $1 refers to the first argument, $2 to the second, and so on.
# Let's print roll number, age, and full name in that order:
echo "Roll Number: $1"
echo "Age: $2"
echo "Name: $3"

echo "----------------------------------------------------------------------------------------"

# Example usage:
# Run the script with the following input:
# bash command_line_arguments 22b1053 20 'Kavya Gupta'
# Output:
# Roll Number: 22b1053
# Age: 20
# Name: Kavya Gupta

# Space acts as a delimiter. But if the arguments are placed within "" or '', they are considered as one.
echo "\$3 of bash command_line_arguments 22b1053 20 \"Kavya Gupta\":"
echo $3

echo "----------------------------------------------------------------------------------------"

# 2. Loop Construct:
# When the input size is unknown, use a loop construct.
# The variable $@ represents all input parameters.
# You can iterate through them using a loop.
# For instance, process each argument in a loop:

# Additional related special characters:
echo "\$0 (Script Name): $0"
echo "\$# (Number of Arguments): $#"
echo "\$* (All Arguments as a Single String): $*"
echo "\$@ (All Arguments as Separate Strings): $@"

echo "----------------------------------------------------------------------------------------"

echo "Difference between \$@ and \$*:"
echo "Output of \$@:"
for arg in "$@"; do
    echo "Argument: $arg"
done

echo ""

echo "Output of \$*:"
for arg in "$*"; do
    echo "Argument: $arg"
done

echo "----------------------------------------------------------------------------------------"

echo "\$? (Return Status of Most Recently Executed Command): $?"
echo "\$$ (Process ID of Current Process): $$"

echo "----------------------------------------------------------------------------------------"
