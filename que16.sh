#!/bin/bash



flag=yes

while [ $flag = yes ]

do

        echo "a)Copy a file"

        echo "b)Remove a file"

        echo "c)Move a file"

        echo -e "\nEnter your choice"

        read ch



        case $ch in



                a)

                        echo "Enter the file you want to copy: "

                        read f1

                        echo "Creating copy of $f1 as $f1.cp"

                        cp $f1 $f1.cp

                        ;;



                b)

                        echo "Enter the file which you want to remove: "

                        read f1

                        rm -f $f1

                        ;;



                c)

                        echo "Enter the file you want to move: "

                        read f1

                        echo "Please enter where you want to move the file: "

                        read path

                        mv $f1 $path

                        ;;



                *)

                        echo "Please enter a valid option"



        esac



        echo "Do you want to continue (yes/no)"

        read flag



done


