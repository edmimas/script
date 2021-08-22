a=0
for i in $(seq $1 $2)
do
	a=$(($a+i))
done
echo $a
