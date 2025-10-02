#!/bin/bash

# Run dnf list --upgradable
# If 'linux-image' is in the list:
#    Print "Kernel update detected, reboot required"
# Else:
#    Print "No reboot required"

linux_upd=$(dnf list --upgrade | grep "linux-image")

if [[ $linux_upd =~ "linux-image" ]]; then 
    echo "Kernel update detected, reboot required"
else 
    echo "NO reboot required"
fi 