#!/bin/bash

for((i=$1; i<=$2; i++))
do
	if [ $(($i % 2)) -ne 0 ]; then
		echo $i
	fi
done
