#!/bin/bash


case $1 in
        "a")
                ls -d */;;
        "b")
                find . -maxdepth 1 -perm -111 -type f;;
        "c")
                find . -type l -ls;;
        "d")
                ls *.sh;;
        "e")	ls -l | awk '{if ($5 < 200) print $9}';;
#                for i in $(ls -la | awk '{print $5}'); do
#                       if [ $i -le 200 ]; then
#                               echo $i
#                       fi
#                done
esac
