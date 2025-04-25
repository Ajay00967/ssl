false()
{
	return 1
}

true()
{
	return 0
}

echo -n "True test "
if true; then
	echo yes
else
	echo no
fi

echo -n "False Test "
if false; then
	echo yes
else
	echo no
fi

echo -n "Command Test "
if (echo 1 &>/dev/null) ; then
	echo yes
else
	echo no
fi

echo -n "[[]] Test "
let "x=2"
if [[( 1+$x -eq 2)&&(3 > 2)]]; then
	echo yes
else
	echo no
fi

echo -n "(()) Test "
if (($x+2>3)) ; then 
	echo yes
else
	echo no
fi

if [[ -f a.txt ]]; then
	echo a.txt exists
else
	echo a.txt doesn\'t exist
fi