#!/bin/bash


if [ $# -eq 0 ]; then 
    echo "Please, enter your age." 
    read -p "What is your age: " age 
    if [ -z $age ]; then 
        echo "invalid input, try again later" 
        exit
    fi
    else 
        age=$1

fi

if [ $age -lt 21 ]; then 
    echo "You are not old enough to drink"
    # exit
else 
    echo "Enjoy your drink!"
fi 

