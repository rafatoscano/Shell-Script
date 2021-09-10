#!/bin/bash

ls $1 2>> ~/Documentos/Script/"Lista 2"/erro.log >> /dev/null || echo "Erro: o arquivo $1 não existe" && exit 0
ls $2 2>> ~/Documentos/Script/"Lista 2"/erro.log >> /dev/null || echo "Erro: o arquivo $2 não existe" && exit 0

arquivoA = $(cat $1 | wc -l)
arquivoB = $(cat $2 | wc -l)
(($arquivoA > $arquivoB)) && echo $1 || echo $2
