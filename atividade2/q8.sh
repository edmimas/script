for i in $(seq $1 $2)
do
	if [ $(echo "$i%2"|bc) -ne 0 ]
	then
		echo $i
	fi
done
