#!/bin/bash

(($1 > $2)) && echo -e "Maior: $1\nMenor: $2" || echo -e "Maior:$2\nMenor: $1"
