#!/bin/bash


SERVICE=$1


if [ $# -eq 0 ]; then 
    read -p "what do u want me to install?: " SERVICE
else  
    echo "One moment"
    sleep 2
    dnf install -y $SERVICE > /dev/null
    echo "all done"
fi

