if [ $(wc -l < $1) -le 5 ]
then
	head -n 1 $1
else
	echo "BAD"
fi
