echo "DIRS"
ls -p |grep /
echo "FILES"
find . -type f |sed 's/.\///g'
#ls -p |grep -v /
echo "LINKS"
find . -type l| sed 's/.\///g'
