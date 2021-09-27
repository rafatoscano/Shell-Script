#! /bin/bash

Download=$1
cat $1 | awk '{print $1 ""  S3}'


#awk 'BEGIN {FS = " "; OFS = ","} {print S1}' downloads.txt >cache.txt

#grep Nelson downloads.txt > n.txt
#grep Viana  downloads.txt > v.txt
#grep Arr445 downloads.txt > a.txt
#grep root   downloads.txt > r.txt

#echo "Nelson"
#wc -l n.txt | awk '{ print $1 }'

#echo "Viana"
#wc -l v.txt | awk '{ print $1 }'

#echo "Arr445"
#wc -l a.txt | awk '{ print $1 }'

#echo "root"
#wc -l r.txt | awk '{ print $1 }'

