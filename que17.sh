#!/bin/bash

num=1000;

echo "armstrong numbers till 1000";

for((n=1 ; n<=$num ; n++))

do

        sum=0

        temp=$n

        while [ $temp -ne 0 ]

        do

                f=$((temp%10))

                sum=$((sum+(f**3)))

                temp=$((temp/10))

        done



        if [ $sum -eq $n ]

        then

                echo $n

        fi

done


