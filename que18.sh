#!/bin/bash

num=123456;

echo "number is :$((num))"



echo "The number's at odd position are: "



temp=$((num/10))

div=100

while [ $temp -gt 0 ]

do

        echo $(((temp)%10))

        temp=$((temp/div))

done




