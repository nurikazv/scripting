#!/bin/bash

SERVICE=$1
serv_name=$(systemctl status $SERVICE | head -n 3 | tail -n 1 | awk '{print $2}')

if [ $serv_name = "active" ]; then 
    echo "Service $SERVICE is active"
else 
    echo "Service $SERVICE is not active"
fi

