#!/bin/bash
var = 0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    webpagetest test "$line" --key A.ca960380cacdf97962a0ca13dba52d5f -f > "./ids/2/pywb$var.ind"
    var=$((var+1))
done < "$1"
