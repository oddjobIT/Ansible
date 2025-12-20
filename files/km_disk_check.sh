#!/bin/bash

#check and alert on disk utilization

THRESHOLD=80

df -h| tail -n +2 | while read line; do
    USAGE=$(echo "$line"|awk '{print $5}'| sed 's/%//')
    MOUNT=$(echo "$line"|awk '{print $6}')
    if [ "$USAGE" -gt "$THRESHOLD" ]; then
        echo "Alert: Disk usage on $MOUNT is at $USAGE%"
    fi
    #echo "I ran"
done