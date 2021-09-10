#!/bin/bash

for i in $*;
do
if ls $i 2> /dev/null > /dev/null;then
	echo "$i =>  SIM"
else
	echo "$i =>  NÃO"
fi
done
