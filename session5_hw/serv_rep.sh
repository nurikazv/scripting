#!/bin/bash 

# Create a timestamped log file
# Define a list of services
# For each service:
#    Check its status using systemctl
#    If active → log "service is running"
#    Else → log "service is down"

read -p "Please enter service you would like to check (apache, mysql, ssh, cron):  " service 

date=$(date +%Y-%m-%d)
serv_status=$(systemctl status $service | head -n 3 | tail -n 1 | awk '{print $3}')

if [ $serv_status = "(running)" ]; then 
    echo "$service is running"
    echo "$service is running" >> report_$date.log
else
    echo "$service is down"
    echo "$service is down" >> report_$date.log
fi 