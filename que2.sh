#!/bin/bash

echo "Enter the marks of 1st subject: "
read mark1

echo "Enter the marks of 2nd subject: "
read mark2

echo "Enter the marks of 3rd subject: "
read mark3

if [ $mark1 -gt 100 -o $mark2 -gt 100 -o $mark3 -gt 100 ];
then
	echo "The marks entered should be less than 100"
	exit 1

fi

avg=$(( ( $mark1 + $mark2 + $mark3 )/ 3 ))

if [ $avg -le 50 ];
then
	grade=fail
elif [ $avg -le 60 ];
then
	grade=C+
elif [ $avg -le 70 ];
then
	grade=B
elif [ $avg -le 80 ];
then
	grade=B+
elif [ $avg -le 90 ];
then
	grade=A
else
	grade=A+
fi

echo "The grade is: $grade"
