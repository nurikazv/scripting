#!/bin/bash




if [ -z "$REMOTE_USER" ]; then
    read -p "Enter remote username: " REMOTE_USER
fi


if [ -z "$REMOTE_IP" ]; then
    read -p "Enter REMOTE_IP: " REMOTE_IP
fi

FILE=$1
if [ $# -eq 0 ]; then
    read -p "Provide path to file you want to transfer: " FILE
fi 

scp $FILE $REMOTE_USER@$REMOTE_IP:/tmp/


if [ $? -ne 0 ]; then 
    echo "Somethring went wrong. Error: $?"
else
    echo "all good. /tmp/ is location"
fi


# REMOTE_USER and REMOTE_IP ARE SUPPOSED TO BE IN file in user home directory ~/.zshrc or ~/.bashrc depend on ur laptop
# so you can do like that:

# export REMOTE_USER="root"
# export REMOTE_IP="<ur ip>"
