#!/bin/bash

. func.sh

while getopts "a:b:c:" flag
do
    case "${flag}" in
	a) funcA $OPTARG;;
        b) funcB $OPTARG;;
        c) funcC $OPTARG;;
    esac
done
