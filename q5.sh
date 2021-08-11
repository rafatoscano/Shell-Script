#!/bin/bash

x='date +%H%M%d%m%Y'
mkdir /tmp/"$x"
cp -r . /tmp/"$x"
tar -czvf /tmp/"$x"/tudo.tar.gz /tmp/"$x"
cp /tmp/"$x"/tudo.tar.gz ./
rm -rf /tmp/"$x"
