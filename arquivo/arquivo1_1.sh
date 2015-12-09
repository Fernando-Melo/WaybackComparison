#!/bin/bash
var = 0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    webpagetest test "$line" --key YourWebPageTestKey -f > "./ids/1/arquivo$var.ind"
    var=$((var+1))
done < "$1"
