#!/bin/bash

function funcA {
        c=$(tr -d '[:upper:]' < $1)
        echo "$c" > $1
}

function funcB {
        c=$(sed 's/[0-9]*//g' < $1)
        echo "$c" > $1
}

function funcC {
        c=$(awk '{gsub("[^a-zA-Z0-9]","."); print $1}' $1)
        echo "$c" > $1
}

