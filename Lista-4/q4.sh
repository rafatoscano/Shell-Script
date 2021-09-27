#!/bin/bash

read -p "Nomme do arquivo" arq

sed -i -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/**!!CENSU--RADO!!*/g' $arq

