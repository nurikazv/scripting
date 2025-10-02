#!/bin/bash

# FOR loop syntax ##
#     for item in list; do 
#         command1 
#         command2
#         command3
# done 


# for file in *.sh; do 
#     echo ".sh extensions: $file"
#     mv $file test/ 
# done

# for arg in $@; do 
#     echo "Argumetn: $arg"
# done 


# ---------------------

# users="$(cat /etc/passwd | awk -F ":" '{print $1}' | tail -130)"
# echo $users

for user in $users; do 
    touch test/$user.txt
    echo "This user $user exists in /etc/passwd" > test/$user.txt
done 

for user in $users; do 
    rm test/$user.txt
done