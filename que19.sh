#!/bin/bash


echo "Enter Your string in capital letters:"
read str1

echo "Enter your string in small letters:"
read str2


echo "In upper :$str2" |awk '{print $2 toupper($3)}'
echo "In lower :$str1" |awk '{print $2 tolower($3)}'


