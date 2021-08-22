if [ $(echo "$1>$2"|bc) -gt 0 ]
then
	echo $2
else
	echo $1
fi
