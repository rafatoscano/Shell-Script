#!/bin/bash

while true;do
	echo  "r - Digite o nome de um arquivo que será processado.
a - Remova todas as letras do arquivo.
b - Remova todos os dígitos do arquivo.
c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~.
q - Saia do script. "


#Para alterção permanente use ->    sed -i 
  read x
  case $x in
	  r) read -p "nome do arquivo: " arq;;
	  a) sed 's/[a-zA-Z]//g' $arq;;
	  b) sed 's/[0-9]//g' $arq;;
	  c) sed s/[^[:alnum:]]/~/g $arq;;
	  q) exit 0;;
  esac
done
