#!/bin/bash

current_user=$(whoami)
user_home=$(echo ~/)
processes=$(ps -u $user | wc -l)

for user in /etc/passwd ; do 
    echo "user is $current_user" >> /tmp/user_report.txt
    echo "$current_user home directory is $user_home" >> /tmp/user_report.txt
    echo "$processes" >> /tmp/user_report.txt
    echo "" >> /tmp/user_report.txt
done

# for user in /etc/passwd; do 
#     echo $user | awk '{print $1}'
# done