#!/bin/bash

# Create a sample text file
cat <<EOF > sample.txt
Amit Sharma, 30, Software Engineer
Neha Verma, 25, Graphic Designer
Rajesh Kumar, 28, Project Manager
Priya Iyer, 35, Data Scientist
Sanjay Gupta, 40, Marketing Manager
EOF

echo "Original File:"
cat sample.txt
echo ""

#Use of -E option avoids escaping of ( )
### 1. Swap First Name & Last Name Using Backreferences (\1 \2)
echo "Swapping First and Last Names:"
sed -E 's/^([A-Za-z]+) ([A-Za-z]+)/\2, \1/' sample.txt
echo ""

### 2. Format Output Using & (Matched Pattern)
echo "Highlighting the Age with [Age: &]:"
sed -E 's/[0-9]+/[Age: &]/g' sample.txt
echo ""

### 3. Extract Only Names (Remove Age and Job Title)
### .*$ matches any sequence of characters (including none) until the end of the line
echo "Extracting Only Names:"
sed -E 's/, [0-9]+, .*$//' sample.txt
echo ""

sed -E 's/([a-zA-Z\s]*),.*/\1/' sample.txt
echo

### 4. Change Comma (,) to Pipe (|) as a delimiter
echo "Replacing , with |:"
sed -E 's/,/|/g' sample.txt
echo ""

### 5. Delete Lines Containing 'Designer'
echo "Removing lines that contain 'Designer':"
sed -E '/Designer/d' sample.txt
echo ""

### 6. Swap Age and Job Title Using Multiple Backreferences (\1 \2 \3)
### (.+)$ matches one or more characters and captures it as a group so we can use backreferencing
echo "Swapping Age and Job Title:"
sed -E 's/^([A-Za-z]+ [A-Za-z]+), ([0-9]+), (.+)$/\1, \3, \2 years old/' sample.txt
echo ""

# Cleanup sample file
rm sample.txt
