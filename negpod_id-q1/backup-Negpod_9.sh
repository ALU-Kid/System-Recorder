#!/bin/bash

# Define source directory
source_dir="negpod_id-q1"

# Remote server details
host="64293e56bc62.3a2627c1.alu-cod.online"
username="64293e56bc62"
password="328d3b338a4ced526c9a"
destination="/summative/1023-2024j"

# Create a temporary file to store the output of the backup test
output_file=$(mktemp)

# Use ssh to run the backup test on the remote server
ssh -o "PasswordAuthentication=no" -o "PubkeyAuthentication=yes" -o "StrictHostKeyChecking=no" -i <path_to_private_key> "$username@$host" "if [ -d \"$destination/$source_dir\" ]; then echo 'Backup successful'; else echo 'Backup failed'; fi" > "$output_file"

# Check the output of the backup test
if grep -q 'Backup successful' "$output_file"; then
    echo 'Backup successful'
else
    echo 'Backup failed'
fi

# Remove the temporary output file
rm "$output_file"