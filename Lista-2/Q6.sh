#!/bin/bash

if [ ! -e $1 ] || (( $(cat $1 | wc -l) > 5 )); then
	echo "BAD"
	exit 0
fi

