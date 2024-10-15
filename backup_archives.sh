#!/usr/bin/env bash

arcDir="archived_logs_group5"

if [ ! -d "$arcDir" ];then
	mkdir "$arcDir"
else
	echo "The INformation you are seeking arleady exists"

fi

for eachFile in heart_rate_log_txt_*; do
	mv "$eachFile" "$arcDir"

done
