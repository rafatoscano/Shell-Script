#!/bin/bash

echo DIRS
ls -F | grep /
echo FILES
ls -p | grep -v /
echo LINKS
find . -type l
