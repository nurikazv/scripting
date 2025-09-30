#!/bin/bash

# read -p "Please enter your name: " name 

# if [ $# -lt 3 ]; then
#     echo "Enter your name, age and city"
#     read -p "Please enter your name: " name 
#     read -p "Please enter your age: " age 
#     read -p "Please enter your city: " city 
#     cat << EOF
# your name: $name
# your  aage: $age
# your city: $city
# EOF
# else 
#     echo "Your name: $1"
#     echo "Your age: $2" 
#     echo "Your city: $3"
# fi

# echo "Process Id is: $$" >> process_log.txt
# echo "Argument passed: $#" >> process_log.txt

# cat process_log.txt


# Task: Write a script that checks if a directory exists. 
# If it doesn't, print a message and check the exit status of the last command using $?.


if [ $# -eq 0 ]; then 
    echo "script requires at least 1 argument"
    exit
fi

if [ -d $1 ]; then 
    echo "The $1 does exist" 
else
    echo "The $1 directory does not exist"
    ls $1 
    echo "Exit status: $?" 
fi