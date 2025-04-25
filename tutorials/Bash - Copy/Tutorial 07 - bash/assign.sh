let "x=3*4"		&& echo $x
(( x = 3*4 )) 	&& echo $x
x=$((3*4)) 		&& echo $x
((x += 5))		&& echo $x
echo $((x^4))
x=$(echo "scale=5;2/5" | bc)
y=$(echo "scale=5;1/5" | bc)
echo $(echo "scale=5;$x + $y" | bc)