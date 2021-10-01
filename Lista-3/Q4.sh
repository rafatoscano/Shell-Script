#!/bin/bash

v=0
read -p "digite um endereço IP: " ip
echo $ip | tr '.' '\n' > arq

while read linha; do
line="octeto $v = "$(echo "obase=2; ibase=10; $linha" | bc)
(( v++ ))
echo $line
done < arq
