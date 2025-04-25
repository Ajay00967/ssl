#!/bin/bash
# Author: Kavya Gupta

# NOTE: Run the script as => ./arrays.sh

# Create an indexed array with filenames
files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

# Access individual elements
echo "First file: ${files[0]}"
echo "Second file: ${files[1]}"

# Print all elements
echo "All files: ${files[*]}"

# Update an element
files[0]="a.txt"
echo "Updated first file: ${files[0]}"

#Add element
files+=("hello.txt" "hello1.txt")
echo "All files: ${files[*]}" 

# Create an associative array with Linux distributions
declare -A distros
distros["Ubuntu"]="Debian-based"
distros["Red Hat"]="Enterprise"
distros["Fedora"]="Community"

# Access individual elements
echo "Ubuntu is ${distros["Ubuntu"]}"
echo "Red Hat is ${distros["Red Hat"]}"

# Print all keys (distributions)
echo "Available distributions: ${!distros[*]}"

# Print all values (types)
echo "Distribution types: ${distros[*]}"

# Add a key-value pair
distros["Gentoo"]="Source-based"
echo "Distribution types: ${distros[*]}"
