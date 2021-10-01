#!/bin/bash
while true
do
echo -e "Deseja inserir um (talvez novo) link?\n1 - Sim\n2 - Nao\n3 - Sair"
read -p 'Digite sua escolha: ' abc
clear
if [ $abc -eq 1 ]
then
rm index.html 2>/dev/null
read -p 'Digite o link do site sem http ou https: ' site
wget -q $site -O index.html
fi

if [ $abc -eq 2 ]
then
	if [ -z $site ]
	then
	echo "hmmm, voce nao digitou nenhum link anteriormente :/"
	continue
	else
	:
	fi
fi

if [ $abc -eq 3 ]
then
rm idnex.html links.txt imgs.txt 2>/dev/null
exit 0
fi

echo -e "1 - Mostrar a página\n2 - Mostrar os links\n3 - Mostra as imagens\n4 - Voltar"
read -p 'Escolha a opcao desejada: ' ops

clear

if [ $ops -eq 1 ]
then
echo "Página: $site"
echo "--------------------------------------"
cat index.html|sed 's/<[^>]*>//g'
fi

if [ $ops -eq 2 ]
then
echo "Página: $site"
echo "--------------------------------------"
cat index.html|grep -oP '(?<=href=)[^ ]*'| grep -oP '.*(?=">)'|sed s/\"//g|sed s/#//g > links.txt
sed -i -e "s,\./,http://$site,g" links.txt
sed -i -e "s,^/,http://$site/,g " links.txt
sed -i -E -e '/http|https/!s,^,http://$site,g' links.txt
#echo "$r_links3" > links.txt
cat -n links.txt
echo -e "voce deseja acessar algum dos links?\n1 - sim\n2 - nao"
read -p "Digite sua opcao: " op

	if [ $op -eq 1 ]
	then
	read -p "Digite o numero da linha do linha a selecionar: " ind
	curl -L -s $(sed -n ${ind}p links.txt)|sed 's/<[^>]*>//g'
	rm links.txt
	fi

	if [ $op -eq 2 ]
	then
	continue
	clear
	fi
fi

if [ $ops -eq 3 ]
then
echo "Página: $site"
echo "--------------------------------------"
cat index.html|grep -E '<img src\s*=\s*"([^"]+)"'| grep -oP '.*(?=")'|grep -oP '(?<=src=)[^ ]*'|sed 's/\"//g' > imgs.txt
sed -i -e "s,\./,http://$site,g" imgs.txt
sed -i -e "s,^/,http://$site/,g " imgs.txt
sed -i -E -e "/http|https/!s,^,http://$site,g" imgs.txt
cat -n imgs.txt
echo -e "voce deseja baixar alguma imagem?\n1 - sim\n2 - nao"
read -p "Digite sua opcao: " op

        if [ $op -eq 1 ]
        then
        read -p "Digite o numero da linha do linha a selecionar: " ind
        wget -q  $(sed -n ${ind}p imgs.txt)
        rm imgs.txt
        fi

        if [ $op -eq 2 ]
        then
	rm imgs.txt
	clear
	continue
        fi

fi

if [ $ops -eq 4 ]
then
	continue
fi

done

