#! /bin/bash

source func.sh

read -p 'Informe a url: ' url
wget $url -o temp/index $> /dev/null
if [ &? != 0 ]; then
        echo "URL NÃO ENCONTRADA"
        exit 0
fi

while True; do
	echo -e " #### MENU #### "
	echo -e "
		1- Visualizar a Página Web
		2- Lista de Links
		3- Acesso aos links
		4- Exibir Imagem
		5- Download de Imagem
		6- Exit
	"
	 case $option in
		 "1") opc1 $url;;
		 "2") opc2 $url;;
		 "3") opc3 ;;
		 "4") opc4 ;;
		 "5") opc5 ;;
		 "6") opc6 ;;
		 *) echo "Opção Inválida"
	esac
done
