#!/bin/bash 

Nomes=$1 

cat $1 | awk '{print $1 "" $2}' > meninos.txt 
cat $1 | awk '{print $3 "" $4}' > meninas.txt

echo
cat meninas.txt 
echo 
cat meninos.txt 
