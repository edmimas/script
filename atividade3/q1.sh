n=$(wc -l <$1)

if [ $2 -gt $n ]
then
	echo "Falha: o arquivo '$1' possui apenas $n linhas"

else
	sed -n -e $2p $1

fi
