#!/bin/bash
var = 0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    webpagetest har $line  > "./hars/2/arquivo$var.har"
    var=$((var+1))
done < "$1"
