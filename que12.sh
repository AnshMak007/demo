#!/bin/bash

echo "Enter three numbers: \c"
read x y z

gr=0


if [ $x -gt $y ]
then
	gr=$x 
else
	gr=$y
fi

if [ $z -gt $gr ]
then
	gr=$z
fi
echo "The greatest number out of $x $y $z is: $gr"

s=$x
if [ $y -lt $s ]
then
	s=$y
fi
if [ $z -lt $s ]
then
	s=$z
fi
echo "The smallest number out of $x $y $z is: $s"
