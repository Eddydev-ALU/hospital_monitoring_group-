#!/usr/bin/env bash

echo "Enter the device name:"
read device_name

logFile="heart_rate_log.txt"

while true; do
  timestamp=$(date '+%Y-%m-%d %H:%M:%S')
  heart_rate=$((RANDOM % 81 + 40))
  echo "$timestamp $device_name $heart_rate" >> "$logFile"
  sleep 1
done &

echo "Heart rate monitor is running in the background. Process ID (PID): $!"
