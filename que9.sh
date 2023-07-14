#!/bin/bash

for ((i=1 ; i<5 ; i++))
do
	for ((j=1 ; j<=i ; j++))
	do
		echo -n " * "         
	done
	echo ""
done


for ((i=4 ; i>= 0 ; i--))
do
	for ((j=0 ; j<=i ; j++))
	do
		echo -n " * "
	done
	echo ""
done
