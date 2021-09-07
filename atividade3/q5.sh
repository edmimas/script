#!/bin/bash
while getopts "abcde" flag
do
    case "${flag}" in
	a)ls -l |grep "^d"|awk '{print $NF}';;
        b) ls -ls | grep -E "[d\-](([rw\-]{2})x){1,3}"|awk '{print $NF}';;
        c) ls -l | grep "^l" --color=never;;
	d) ls |grep -E "*\.sh" --color=never;;
	e) ls -l |awk '{print $5}'|grep -E "^([1-9][0-9]?|1[0-9]{2})$" --color=never;;
    esac
done
