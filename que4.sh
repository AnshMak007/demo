#!/bin/bash

echo "Please enter the file name: \c"
read f1

cc=$(wc -m < $f1)

wc=$(wc -w < $f1)

l=$(wc -l < $f1)

ll=$(wc -L < $f1)

echo "The count of characters in $f1 is: $cc"

echo "The count of words in $f1 is: $wc"

echo "The count of lines in $f1 is: $l"

echo "The lenght in $f1 is: $ll"
