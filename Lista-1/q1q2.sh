#!/bin/bash                                                                     

echo "Todos serão aprovados com média 100 e sou Mengão até morrer!"

echo "Sr Usuário, quais são os nomes dos 5 diretórios e seus respectivos aruivo\
s?"
read -p "Sr Usuário,Digite dir1 :> " Dir1
read -p "Sr Usuário,Digite dir2 :> " Dir2
read -p "Sr Usuário,Digite dir3 :> " Dir3
read -p "Sr Usuário,Digite dir4 :> " Dir4
read -p "Sr Usuário,Digite dir5 :> " Dir5

echo -e "Diretorios ${Dir1}, ${Dir2}, ${Dir3}, ${Dir4}, ${Dir5}"
ls $Dir1
ls $Dir2
ls $Dir3
ls $Dir4
ls $Dir5

