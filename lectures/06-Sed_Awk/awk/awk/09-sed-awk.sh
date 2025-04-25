
#!/bin/bash

#combine sed and awk
sed 's/,/ /g' students.csv | awk '{print $2, $3}'

awk -F, '{printf "%s %s\n",$2,$3}' students.csv
