#!/bin/bash

# Define sever variables
REMOTE_USER="03e282cfdac0"
REMOTE_HOST="03e282cfdac0.7d5f7213.alu-cod.online"
REMOTE_PATH="/home"

mkdir ./archived_logs_group5
mv heart_rate_log.txt_* archived_logs_group5/

scp -r archived_logs_group5 "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"

if [[ $? -eq 0 ]]; then
    echo "Files Backed-up successfully!!"
    echo "Your backup location: $REMOTE_PATH"
else
    echo "Backup failed"
fi
