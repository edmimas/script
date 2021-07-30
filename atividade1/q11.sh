x=$(wc -l $1 $2 $3 |cut -d' ' -f1|awk -F: '{print $1}')
echo $x
