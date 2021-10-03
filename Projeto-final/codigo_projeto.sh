#! /bin/bash

function opcao1() {
	clear
	echo -e "Página Web > $1\n"
	cat temp/index | sed -r 's/$/as/g' | tr '\n' '2' | sed 's/<[^>]*>//g' | sed 's/as2/\n/g'
	read -p "Informe se pretende continuar: "
}

function opcao2() {
	rm temp/novourl
	cat temp/index | grep -o -E "(<a. *?>. *?</a>)" > temp/urls
	cat temp/urls | grep -o -E '"([^"]*)"' | tr '"' ' ' | sed -r "s/ //g" &> temp/urlsvazios

	contador-0
	while read -r linha; do
		contador=$(( $contador +1 ))
		linhas=$(cat temp/urlsvazios | sed $contador'!d')
		if [ $(echo $linhas | grep -Eo '^.') == "/" ]; then
			echo "$url$linha" >> temp/novourl
		else
			echo "$linha" >> temp/novourl
		fi
	done < temp/urls
	
function opcao3() {
       	clear
  	echo -e "\nurls disponíveis!\n"
  	cat -n temp/novourl
  	read -p "Informe um valor do url: " valor
  	cont=0
  	while read -r linha; do
  	cont=$(( $cont + 1 ))
  	lin=$(cat temp/urlsvazios | sed $cont'!d')
    		if [ $num -eq $cont ]; then
        		url=$lin
        		wget $lin -O temp/index &> /dev/null
    		fi
  	done < temp/urlsvazios	
}

function opcao4() {
       	cat temp/index | grep -o -E '(<img.*?src=["])([^"]*)(["].*?\/?>)' | sed -r 's/(<imagem.*?src=["])//g' | sed -r 's/(["].*?\/?>)//g' & > temp/urlsimagem

	contador=0
  	rm temp/urlsimagem1 &> /dev/null
  	while read -r linha; do
    	contador=$(( $contador + 1 ))
    	linhas=$(cat temp/urlsimagem | sed $contador'!d')
    	if [ $(echo $linhas | grep -Eo '^.') == "/" ]; then
      		echo "$url$linha" >> temp/urlsimagem1
    	else
      		echo "$linha" >> temp/urlsimagem1
    	fi
  	done < temp/urlsimagem

  	cat -n temp/urlsimagem1 &> /dev/null
  	if [ $? != 0 ]; then
    		echo -e "\nAusencia de imagens!\n"
  	else
    		cat -n temp/urlsimagem1
  	fi
}

function opcao5() {
  	clear
  	cat -n temp/urlsimagem1 &> /dev/null
  	if [ $? != 0 ]; then
    		echo "Sorry! Unable to start the download!"
  	else
    		echo -e "\nDownloads to start!\n"
    		cat -n temp/urlsimagem1
    		read -p "Informe o valor para download: " valor
 	fi

  	contar=0
 	while read -r linha; do
  	cont=$(( $cont + 1 ))
  	lin=$(cat temp/urlsimagem1 | sed $cont'!d')
    		if [ $num -eq $cont ]; then
    		wget $lin &> /dev/null
    		sleep 2
    		echo -e "\nDownload Concluído!\n"
    		fi
  	done < temp/urlsimagem1
}

function opcao6 () {
  	rm temp/index &> /dev/null
  	rm temp/urls &> /dev/null
  	rm temp/urlsimagem &> /dev/null
  	rm temp/urlsimagem1 &> /dev/null
  	rm temp/urlsvazios &> /dev/null
  	exit 0
}
