#!/bin/bash

[[ $(echo $1 | wc -c) -ge 8 ]] && echo $1 | grep [A-Z]. && echo $1 | grep [0-9]. && echo Válida || echo Inválida
