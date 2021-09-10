#!/bin/bash

calculo=$(echo "scale=2;$1 < $2" | bc)
if [ $calculo -eq 1 ]; then
	echo $1
else
	echo $2
fi
