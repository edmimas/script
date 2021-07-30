x=$(echo "scale=2;($1*100)/$2"|bc)
y=$(echo "scale=2;($2*100)/$1"|bc)
echo "$x% $y%"
