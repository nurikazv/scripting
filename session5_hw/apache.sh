#!/bin/bash

# Check /var/log/apache2/access.log size
# If size > 100MB:
#    Move it to access.log.YYYYMMDD.gz
#    Touch a new empty access.log
#    Restart Apache

bytes_in_100MB=$((100 * 1024 * 1024))

access_log_size=$(ls -lh /var/log/httpd/access_log | awk '{print $5}')

date=$(date +%Y-%m-%d)

if [ $access_log_size -ge $bytes_in_100MB ]; then 
   echo "/var/log/httpd/access_log is over 100MB"
   gzip /var/log/httpd/access_log 
   mv /var/log/httpd/access_log.gz /var/log/httpd/access_log.$date.gz
   touch /var/log/httpd/access_log
   systemctl restart httpd
   echo "file access_log has been archived"
else 
   echo "file is not over 100MB"
fi