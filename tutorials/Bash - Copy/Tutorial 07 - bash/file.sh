#!/bin/bash

#Author: Kritin Gupta
#Description: This script demonstrates file-IO in bash


file="text.txt"

if [ -f $file ]; then
	while read line; do
		echo $line
	done < $file
fi

echo "Appending to file" >> $file
 
cat << END >> $file
This text will be appended to the file $file
This will go on till I type END
END

echo -e "\n\nNew Contents\n"

if [ -f $file ]; then
	while read line; do
		echo $line
	done < $file
fi

