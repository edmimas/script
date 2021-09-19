

cat $1|sed -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b'/"**\!\!CENSU--RADO\!\!**"/ > a;cat a >$1;rm a
