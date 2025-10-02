#!/bin/bash

# Define remote IP, user, and config path
# Use scp to copy config file
# Use ssh to restart apache2 on remote host
# Log success or failure

if [ -z "$REMOTE_USER" ]; then
    read -p "Enter remote username: " REMOTE_USER
fi


if [ -z "$REMOTE_IP" ]; then
    read -p "Enter REMOTE_IP: " REMOTE_IP
fi

if [ $# -eq 0 ]; then 
    read -p "Enter path to your conf file:  " conf_file
fi

scp $conf_file $REMOTE_USER@$REMOTE_IP:/etc/httpd/conf/httpd.conf

if [ $? -eq 0 ]; then 
    echo "$conf_file has been copied to $REMOTE_IP:/etc/httpd/conf/"
    echo "Restarting http on $REMOTE_IP"
    ssh $REMOTE_USER@$REMOTE_IP "systemctl restart httpd"
else 
    echo "Something went wrong. Please make sure you entered valid information"
fi 

