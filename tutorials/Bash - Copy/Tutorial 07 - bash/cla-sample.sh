#! /bin/bash

#Author: Kritin Gupta
#Description: This script is some sample code on how to use command line aarguments

#Suppose you want atleast one argument.
#If first arg is 1, you want one more argument 
#If first arg is 2, you want two more arguments

if [ $# -lt 1 ]; then
	echo "Not enough Arguments"
	exit 1
fi

if [[($1 -eq 1) && ($# -ne 2)]]; then
	echo "Usage $0 1 arg1"
	exit 1
elif [[($1 -eq 2) && ($# -ne 3)]]; then
	echo "Usage $0 2 arg1 arg2"
	exit 1
else
	echo "Invalid Argument"
	exit 1
fi

type=$1
arg1=$2
arg2=$3
exit 0
