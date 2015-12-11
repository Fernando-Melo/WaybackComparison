#!/bin/bash
var = 0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    webpagetest test "$line" --key A.399d956de3e3902d4848023a8a3e2b6f -f > "./ids/1/pywb$var.ind"
    var=$((var+1))
done < "$1"
