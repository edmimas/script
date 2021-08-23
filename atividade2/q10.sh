if [ -z "${*}" ]
then
	echo -e "ERRO!!\nDeve ser passado um nome de arquivo"
	exit
fi

for i in ${*}
do
	ls $i 2>/dev/null 1>/dev/null && echo "$i SIM" || echo "$i NAO"
done
