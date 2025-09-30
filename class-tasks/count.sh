#!/bin/bash

# 4. Exercise: count.sh
# Count how many files are in /var/log.
# Redirect result into count.txt.
# Print “There are X files in /var/log”.
ls /var/log | wc -l > count.txt

ls /var

ls /var/log | wc | awk -F " " '{print $1}' >> cout.txt