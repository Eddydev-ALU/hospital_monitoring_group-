#!/usr/bin/env bash

userinfo="03e282cfdac0"
host="03e282cfdac0.7d5f7213.alu-cod.online"

arcDir="archived_logs_group5"

if [ ! -d "$arcDir" ];then
	mkdir "$arcDir"
else
	echo "The INformation you are seeking arleady exists"

fi

for eachFile in heart_rate_log.txt_*; do
	mv "$eachFile" "$arcDir"

done

scp -r $arcDir/ $userinfo@$host:/home/
