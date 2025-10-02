#!/bin/bash 

# Get uptime in minutes
# If uptime < 5:
#    Print "System was recently rebooted"
# Else:
#     Print "System is stable"
# fi

# UPTIME=$(uptime -p)
uptime_p="up 5 days, 1 hour, 4 minutes"

MIN=$(uptime -p | awk -F " " '{print $2}')


if [[ "$UPTIME" =~ day || "$UPTIME" =~ hour ]]; then 
    echo "System has not been rebooted in last 5 min "
    exit
fi

if [ "$MIN" -lt 5 ]; then 
    echo "System was recently rebooted"
fi

