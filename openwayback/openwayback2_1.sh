#!/bin/bash
var = 0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    webpagetest test "$line" --key YOURWEBPAGETESTKEY -f > "./ids/2/openwayback$var.ind"
    var=$((var+1))
done < "$1"
