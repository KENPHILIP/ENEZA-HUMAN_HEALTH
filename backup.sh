#!/bin/bash

# Backup script with timestamp, progress reporting, and error handling

SOURCE_FILE="data.txt"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="backup_$TIMESTAMP.txt"

echo "Starting backup process..."

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: $SOURCE_FILE not found!" >&2
    exit 1
fi

echo "Backing up $SOURCE_FILE to $BACKUP_FILE..."

# Perform the backup with progress reporting
if cp "$SOURCE_FILE" "$BACKUP_FILE"; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed during copy!" >&2
    exit 1
fi

echo "Backup process completed."
