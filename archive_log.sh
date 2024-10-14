#!/usr/bin/env bash

log_file="heart_rate_log.txt"
time_stamp=$(date "+%Y%m%d_%H%M%S")
if [ -f $log_file ]
then 
	echo "Archive File Created"
arch_file="${log_file}_${time_stamp}"
mv "$log_file" "$arch_file"
else
	echo "File does not exist"
fi
