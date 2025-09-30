#!/bin/bash



number=$1

while [ $number -ge 0 ]; do 
    echo $number 
    ((number--)) ## number=$((number-1))
    sleep 1
done 

echo "time is up"