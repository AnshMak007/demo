#!/bin/bash

f=y
#setting flag
while [ $f = y ]
do
	echo "a)Display current directory"
	echo "b)List directory"
	echo "c)Make directory"
	echo "d)Change directory"
	echo "e)Copy a file"
	echo "f)Rename a file"
	echo "g)Delete a file"
	echo "h)Edit a file"

	read ch

	case "$ch" in

		a)	
			pwd;;
		b)
			ls -d;;
		c)
			echo "Enter the name of directory you wantto create: "
			read dir
			mkdir $dir;;
		d)
			echo "Enter the name of directory you want to change to: "
			read dir
			cd ../$dir;;
		e)
			echo "Enter the name of file you want to make a copy of: "
			read f1
			echo "Creating copy of $f1 as $f1.cp"
			cp $f1 $f1.cp ;;
		f)
			echo "Enter the name of the file you want to rename: "
			read f1
			echo "Enter the new name you want for the file: "
			read f2
			mv $f1 $f2;;
		g)
			echo "Enter the name of the file you want to delete: "
			read f1
			rm -f $f1;;
		h)
			echo "Enter the name of the file you want to edit: "
			read f1
			nano $f1;;
		*)
			echo "please enter any available option"

		esac


	echo "Do you want to continue (y/n): "
	read f 
	#reading flag 
done
