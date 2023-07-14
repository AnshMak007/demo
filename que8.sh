n1=0
n2=0
fun(){
	echo "Enter number 1 = \c"
	read n1
	echo "Enter number 2 = \c"
	read n2
}

flag=true
while [ flag ]
do
	echo "\tMathematical Operations
		a) Addition
		b) Subtraction
		c) Division
		d) Multiplication
		q) Exit
	Enter your choice = \c"
	read choice
	case "$choice" in 
		"a")
			fun			
			ans=`expr $n1 + $n2`
			echo "Sum of given numbers = ${ans}"
		;;
		"b")
			fun
			ans=`expr $n1 - $n2`
			echo "Subtraction of given numbers = ${ans}"
		;;
		"c") 
			fun
			ans=`expr $n1 / $n2`
			echo "Division of given number = ${ans}"
		;;
		"d")	
			fun
			ans=`expr $n1 \* $n2`
			echo "Multiplication of given number = ${ans}"
		;;
		"q")
			echo "Thank you"
			exit
		;;
	esac
done
