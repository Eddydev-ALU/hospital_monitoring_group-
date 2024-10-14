#!/usr/bin/env bash

log_file="heart_rate_log.txt"
time_stamp=$(date "+%Y%m%d_%H%M%S")
if [ -f $log_file ]
then 
	echo "File Exists"
arch_file="${log_file}_${time_stamp}"
mv "$log_file" "$arch_file"
else
	echo "Archive File created"
fi
