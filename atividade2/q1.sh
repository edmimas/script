echo -e "O redirecionador \">\" redireciona a saida para um arquivo ou local desejado apagando o conteúdo contido nele e colocando o novo que está sendo enviado.\nEle é útil para a criação de arquivos já com conteúdo\nEX: \"echo 'teste' > arquivo.txt\""
echo -e "-----------------"
echo -e "O redirecionador \">>\" redireciona a saida para um arquivo ou local desejado inserindo no final do arquivo.\nEle é útil para adicionar conteúdo ao final de arquivos\nEX: \"echo 'teste2 >> arquivo.txt\""
echo -e "-----------------"
echo -e "O redirecionador \"2>\" redireciona qualquer erro para um arquivo ou local desejado apagando o conteúdo contido nele e colocando o novo que está sendo enviado.\nEle é útil para suprimir mensagens e erro\nEX: \"qualquer_comando 2> /dev/null\""
echo -e "-----------------"
echo -e "O redirecionador \"2>>\" redireciona qualquer erro para um arquivo ou local desejado inserindo no final do arquivo.\nEle é útil para gerar logs de erro\nEX: \"qualquer_comando 2>> erro.log\""
echo -e "-----------------"
echo -e "O redirecionador \"&>\" direciona o stdout (1) e o stderr (2) para dentro de um arquivo, sobrescrevendo o seu conteúdo, e caso o arquivo não exista, ele o criará.\nEX: cat /etc/* &> arq_out"
echo -e "-----------------"
echo -e "O redirecionador \"&>>\" direciona o stdout (1) e o stderr (2) para dentro de um arquivo, este não sobrescreve o seu conteúdo, apenas acrescenta a saída 1 e 2 ao final do conteúdo existente no arquivo, caso o arquivo especificado não exista, ele o criará."
echo -e "-----------------"
echo -e "O redirecinador \"<\" direciona o conteúdo de um arquivo para a entrada de um comando.\nEX: cat < /etc/passwd"
echo -e "-----------------"
echo -e "O redirecinador \"<<\" serve para redirecionamento de entrada de string: porém ao invés de passar um arquivo, você digita diretamente a string (em múltiplas linhas). Você acaba a entrada com um CTRL+D , ou com um 'FIM'.\nEX: 'cat << FIM\nbala bla\nbla\nFIM'"
echo -e "-----------------"
echo -e "O redirecinador \"|\" direciona a saída de um comando para a entrada de outro.\nEle é bom para passar um comando para outro\nEX: echo 'testando'|base64"
echo -e "-----------------"
echo -e "Sobre o redirecinador \"<<<\" não achei muita coisa, mas com as pesquias e teste percebi que em alguns casos funciona como um pipe(|) invertido.\nEX: grep -i label <<< cat /etc/fstab"
