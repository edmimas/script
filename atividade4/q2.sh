#!/bin/bash
l=$(sort down|awk '{print $1}' | uniq -c |wc -l)
nomes=$(sort $1|awk '{print $1}' | uniq -c|awk '{print $2}')
for (( c=1; c<=$l; c++ ))
do
	tot=0
	n=$(echo $nomes |cut -d' ' -f"$c")
	t=$(cat $1 |grep $n|cut -d' ' -f3)
	for i in ${t[@]}; do
  		let tot+=$i
	done
	echo "$n baixou um total de $tot(decida se é em MB ou GB)"
done
