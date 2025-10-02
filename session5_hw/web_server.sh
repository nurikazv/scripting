#!/bin/bash

# Define a list of URLs
# For each URL:
#    Use curl -o /dev/null -s -w "%{http_code}" to get status
#    If 200 → print "OK"
#    Else → print "ERROR" with code

urls=("https://www.youtube.com" "http://localhost" "https://code.akumotechnology.com" "http://blabla.com" "http://example.com")

for url in "${urls[@]}"; do 
    url_code=$(curl -o /dev/null -s -w "%{http_code}" $url)
    if [ $url_code -eq 200 ]; then
        echo "$url is OK"
    else 
        echo "$url ERROR"
    fi 
done

