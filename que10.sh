#!/bin/bash

echo "The name of program is $0"    

num_arg=$(echo "${@}" | wc -w)             

echo "The number of Arugments passed are: $num_arg"

echo "The Process id of this process is $$"

echo "The list of all Arugments passed is ${@}"

echo -n "The last half of commands are: "   

for (( i=$((num_arg/2 + 1)) ; i<=$num_arg ; i++ ));
do
	echo -n "${!i} "		 
done

echo -n -e "\nThe last three Arugments passed are: "  

for (( j=$((num_arg-2)) ; j<=$num_arg ; j++ ));
do
	echo -n "${!j} "
done


