#!/bin/bash

for file in *.txt; do 
    NAME=$(echo $file | awk -F "." '{print $1}')
    EXT=$(echo $file | awk -F "." '{print $2}')
    mv $file $NAME"_backup."$EXT
done 