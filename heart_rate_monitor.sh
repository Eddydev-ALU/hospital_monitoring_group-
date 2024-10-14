#!/bin/bash

echo "Enter Device Name:"
read device_name

logFile="heart_rate_log.txt"

while true;
do
  Timestamp=$(date '+%Y-%m-%d %H:%M:%S')
  Heart_rate=$((RANDOM % 40 + 60))  # Random value between 60-100
  echo "$Timestamp $device_name $Heart_rate" >> "$logFile"
  sleep 1
done

echo "Heart rate monitor running in the background. Process ID (PID): $!"
