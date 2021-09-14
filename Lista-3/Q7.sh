#!/bin/bash



while read linha;do
if echo $linha | grep -E "[a-z0-9]+@[a-z0-9]+\.[a-z0-9]+" > /dev/null
then
echo "Ok:  "$linha 
else
echo "Fail:   "$linha
fi
done < $1
