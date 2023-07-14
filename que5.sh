#!/bin/bash

echo "Name of the 1st file:"
read f1

echo "Name of the 2nd file:"
read f2

diff $f1 $f2 > /dev/null

var=$?

if [ $var -eq 0 ];
then
	rm $f2
	echo "Both files are same, $f2 will be deleted."

else
	echo "Both files are not the same."
fi
