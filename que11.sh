#!/bin/bash

echo -n "Enter a string or a number: "
read str

echo "The reverse of $str is: $(echo "$str" | rev)"   
