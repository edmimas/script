#!/bin/bash
read -sp "Digite a senha: " PASS
echo ""
if [ ${#PASS} -gt 7 ] && [ $(echo $PASS |grep -E "[a-z]") ] && [ $(echo $PASS|grep -E "[A-Z]") ] && [ $(echo $PASS |grep -E "[0-9]") ]
then
	echo "foooorte, obedece ao padrao"
else
	echo "senha michuruca, nao obedece ao padrao"
fi
