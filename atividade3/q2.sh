echo "###Antes de usar o'tr'###"
cat $1
echo "###Depois de usar o 'tr'###"
tr 0-9 "*" < $1
