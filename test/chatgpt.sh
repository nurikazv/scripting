#!/bin/bash

read -p "enter your file: " file 

if [ -e $file ]; then 
    echo "file exist"
else 
    echo "file doesnt exist"
fi