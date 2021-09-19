#!/bin/bash

while IFS= read -r line
do
  n=$(echo $line|cut -d' ' -f1)
  n1=$(echo "(${n:0:2}) ${n:2:1} ${n:3:4}-${n:7:4}")
  echo $n1
done < "$1"
