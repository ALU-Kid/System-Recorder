#!/bin/bash

# Define source directory
source_dir="negpod_id-q1"

# Define remote server details
remote_user="64293e56bc62"
remote_host="64293e56bc62.3a2627c1.alu-cod.online"
remote_dir="/summative/1023-2024j"

# Perform the backup using scp
scp -r $source_dir $remote_user@$remote_host:$remote_dir
