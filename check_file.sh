#!/bin/bash

if [ $# -eq 0 ]; then 
    file="report.txt"
else 
    file=$1
fi 

if [ -f $file ]; then 
    echo "File $file exist"
else 
    echo "File $file does not exist, I will create it now "
    touch $file && echo "report created" > $file 
    echo "File $file created" && ls -la $file 
fi 