#!/bin/bash

for((i=$1; i<=$2; i++))
do
	soma=$(($soma + $i))
done
echo $soma
