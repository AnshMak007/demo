#!/bin/bash

echo "Enter the name of the file in the same directory whose contents you want to reverse: "
read f1

echo -e "file before reversing: \n$(cat $f1)"

echo $(cat $f1 | rev) > $f1    # cated the file and piped into rev

echo -e "\nFile after reversing: \n$(cat $f1)"
