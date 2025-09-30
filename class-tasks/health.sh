#!/bin/bash

# Goal: Check the status of a given service and write the result to a timestamped log file.

# Services to check: apache2, mysql, ssh, cron

# Pseudocode:

# Create a timestamped log file
# Define a list of services
# For each service:
#    Check its status using systemctl
#    If active → log "service is running"
#    Else → log "service is down"

SERVICE=$1

systemctl status $SERVICE > /dev/null
if [ $? -ne 0 ]; then 
    clear
    echo "Invalid service name"
    exit
fi

service_status="$(systemctl status $SERVICE | grep "Active" | awk -F " " '{print $2}')"
timestamp="$(date "+%Y-%m-%d-%H:%M:%S")"

touch $SERVICE-logs-$timestamp.log  ## $SERVICE-logs-2025-09-23-20:20:08


if [ $service_status = "active" ]; then 
    echo "service is running" > $SERVICE-logs-$timestamp.log
else 
    echo "service is down" > $SERVICE-logs-$timestamp.log
fi 

# input == date "+%Y-%m-%d-%H:%M:%S" 
# output == 2025-09-23-20:20:08