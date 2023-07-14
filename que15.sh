#!/bin/bash

echo -n "Enter string to check pallindrom: "
read st

if [ $st = $(rev <<< "$st") ]    
then 							 
	echo "String is pallindrom"  
else
	echo "String is not pallindrom"
fi

# <<< is used to give string input to a command the string should be put in quotes for it to work
# also used = instead of -eq becuase -eq does not work on alpha numeric values
