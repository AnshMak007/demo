echo "Enter file name : "
read file
echo "Enter search word : "
read word

cnt=$(grep -c $word $file)

if [ $cnt -eq 0 ]
then echo "Word not present"
else
	echo "The number of times the word is present : ${cnt}"
	echo "Line numbers where the word is present : "
	grep -no $word $file | cut -d: -f1
fi
