#!/bin/bash

# Define source and destination directories
source_dir="/home/kevin/htop"
dest_dir="/home/kevin/backup"

# Create a timestamp for the backup
timestamp=$(date +"%Y%m%d%H%M%S")

# Use rsync to perform the backup
rsync -av --delete "$source_dir" "$dest_dir/backup_$timestamp"

# Optional: Prune old backups (e.g., keep backups from the last 7 days)
find "$dest_dir" -type d -mtime +7 -exec rm -rf {} \;

