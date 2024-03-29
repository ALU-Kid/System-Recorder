#!/bin/bash

# Define source directory
source_dir="negpod_9-q1"

# Define remote server details
remote_user="64293e56bc62"
remote_host="64293e56bc62.3a2627c1.alu-cod.online"
remote_dir="/summative/1023-2024j"

# Use scp to complete the backup
scp -r $source_dir $remote_user@$remote_host:$remote_dir

# Verify whether the backup was successful
ssh $remote_user@$remote_host "if [ -d \"$remote_dir/$source_dir\" ]; then echo 'Backup successful'; else echo 'Backup failed'; fi"
