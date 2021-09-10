#!/bin/bash

#substituição de shell
a=$( ls / | wc -l)

#substituição de variáveis
echo O valor é "$a"

#substituição aritmética
echo soma igual = "$((4+5+6))"
