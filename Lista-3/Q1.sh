#!/bin/bash

numlinha=$(cat $1 | wc -l)
if [ -e $1 -a $2 -le $numlinha ]; then
	sed -n $2p $1
elif [ $2 -gt $numlinha ]
	echo "Falha, o arquivo $1 possui apenas $(cat $1 | wc -l) linhas"
else
	echo "O infeliz, ponha o cérebro pra trabalhar e digite corretamente!"
fi
