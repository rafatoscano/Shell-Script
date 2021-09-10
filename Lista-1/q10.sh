#!/bin/bash

a=$1
b=$2

echo "scale=2:($a+1)*($b-1)" | bc
