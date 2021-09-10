#!/bin/bash

a=$(bc <<< "scale=2; ($1*100)/$2")
b=$(bc <<< "scale=2; ($2*100)/$1")

echo "${a}%${b}%"
