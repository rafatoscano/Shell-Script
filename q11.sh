#!/bin/bash

l1='cat $1 | wc -l'
l2='cat $2 | wc -l'
l3='cat $3 | wc -l'

echo $(($l1+$l2+$l3))
