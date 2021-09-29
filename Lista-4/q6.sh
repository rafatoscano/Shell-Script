#!/bin/bash

echo "Valor do primeiro numero:"
        read x
echo "Valor do segundo número:"
        read y
if [ $x > $y ]; then
        echo "$x é o maior"
elif [ $x == $y ]; then
        echo "Valores iguais"   
else
  echo "$y é o maior"
fi

echo "Valor do primeiro numero:"
        read x
echo "Valor do segundo número:"
        read y
if [ $x < $y ]; then
        echo "$x é o menor"
elif [ $x == $y ]; then
        echo "Valores iguais"
else
	echo "$y é o menor"
fi

