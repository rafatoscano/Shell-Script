#! /bin/bash

function opc1() {
	clear
	echo -e "Página Web > $1\n"
	cat temp/index | sed -r 's/$/as/g' | tr '\n' '2' | sed 's/<[^>]*>//g' | sed 's/as2/\n/g'
	read -p "Informe se pretende continuar: "
}

function opc2() {
	rm temp/novolink
	cat temp/index | grep -o -E "(<a. *?>. *?</a>)" > temp/links
	cat temp/liks | grep -o -E '"([^"]*)"' | tr '"' ' ' | sed -r "s/ //g" &> temp/linksvazios

	contador-0
	while read -r linha; do
		contador=$(( $contador +1 ))
		linhas=$(cat temp/linksvazios | sed $contador'!d')
		if [ $(echo $linhas | grep -Eo '^.') == "/" ]; then
			echo "$site$linha" >> temp/novolink
		else
			echo "$linha" >> temp/novolink
		fi
	done < temp/links
	
function opc3() {
       	clear
  	echo -e "\nLinks disponíveis!\n"
  	cat -n temp/novolink
  	read -p "Informe um valor do link: " valor
  	cont=0
  	while read -r linha; do
  	cont=$(( $cont + 1 ))
  	lin=$(cat temp/linksvazios | sed $cont'!d')
    		if [ $num -eq $cont ]; then
        		site=$lin
        		wget $lin -O temp/index &> /dev/null
    		fi
  	done < temp/linksvazios	
}

function opc4() {
       	cat temp/index | grep -o -E '(<img.*?src=["])([^"]*)(["].*?\/?>)' | sed -r 's/(<img.*?src=["])//g' | sed -r 's/(["].*?\/?>)//g' &> temp/linksimg

	contador=0
  	rm temp/linksimagem1 &> /dev/null
  	while read -r linha; do
    	contador=$(( $contador + 1 ))
    	linhas=$(cat temp/linksimagem | sed $contador'!d')
    	if [ $(echo $linhas | grep -Eo '^.') == "/" ]; then
      		echo "$site$linha" >> temp/linksimg1
    	else
      		echo "$linha" >> temp/linksimg1
    	fi
  	done < temp/linksimagem

  	cat -n temp/linksimagem1 &> /dev/null
  	if [ $? != 0 ]; then
    		echo -e "\nAusencia de imagens!\n"
  	else
    		cat -n temp/linksimagem1
  	fi
}

function opc5() {
  	clear
  	cat -n temp/linksimagem1 &> /dev/null
  	if [ $? != 0 ]; then
    		echo "Sorry! Unable to start the download!"
  	else
    		echo -e "\nDownloads to start!\n"
    		cat -n temp/linksimagem1
    		read -p "Informe o valor para download: " valor
 	fi

  	cont=0
 	while read -r linha; do
  	cont=$(( $cont + 1 ))
  	lin=$(cat temp/linksimg1 | sed $cont'!d')
    		if [ $num -eq $cont ]; then
    		wget $lin &> /dev/null
    		sleep 2
    		echo -e "\nDownload Concluído!\n"
    		fi
  	done < temp/linksimg1
}

function opc6 () {
  	rm temp/index &> /dev/null
  	rm temp/links &> /dev/null
  	rm temp/linksimagem &> /dev/null
  	rm temp/linksimagem1 &> /dev/null
  	rm temp/linksvazios &> /dev/null
  	exit 0
}
