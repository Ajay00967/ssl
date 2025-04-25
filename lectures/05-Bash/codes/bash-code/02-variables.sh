#!/bin/bash

#name = "Aruna"  (Incorrect, spaces are not allowed)
#Bash interprets name as a command, = as an argument, and "Aruna" as another argument
name="Bhargav"    # Correct
age=12          # Correct
# printing and using variables via echo and $
echo "Hello, $name!"
echo "You are $age years old."

#numbers are also strings
echo -e "\n"
num1=1234
num2=7890
echo $num1$num2

#difference between " and '
echo -e "\n"
myVariable="Hello, world\!"
echo myVariable
echo $myVariable
echo "$myVariable"
echo '$myVariable'
# echo Hello, world\! will not print the !, it will only print Hello, world!
# this can be used to print the whitespace :)

#Handling spaces
#{ } can be used to clearly separate the variable name from surrounding text. See below
echo -e "\n"
var="abc	xyz"
num="123"
echo 1 $var$num
# echo 1 "$var$num" will preserve the spaces :)
echo 2 "$varXX$num"
echo 3 "${var}XX${num}"

#command substitution in variables
echo -e "\n"
lsResult=$(ls)
directory=`pwd`  
echo "My files are:" $lsResult  in $directory


#Double quotes (“”) preserve the literal value of all characters with the exception of $, `, \
#In the first two commands, $ is interpreted as a variable with or  without quotes. 
#In the third command, bash intereprets * as wildcard and lists all files ending in .sh. 
#In the fourth, since it is inside quotes, it views it as * character and looks for a file named "*.sh" 
echo -e "\n"
echo $HOME
echo "$HOME"
ls *.sh
ls "*.sh"


