#!/bin/bash

# Define source directory
source_dir="negpod_id-q1"

# Remote server details
host=64293e56bc62.3a2627c1.alu-cod.online
username=64293e56bc62
password=328d3b338a4ced526c9a
destination=/summative/1023-2024j

# Use scp to copy the source directory to the remote location
sshpass -p "$password" scp -r "$source_dir" "$username@$host:$destination"

# Test if backup was successful
ssh $remote_user@$remote_host "if [ -d \"$remote_dir/$source_dir\" ]; then echo 'Backup successful'; else echo 'Backup failed'; fi"
