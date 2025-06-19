#!/bin/bash

# Define backup directory
BACKUP_DIR="../data/backup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Define timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Backup Nexus data
docker cp nexus:/nexus-data "$BACKUP_DIR/nexus-data_$TIMESTAMP"

# Print completion message
echo "Backup completed successfully at $BACKUP_DIR/nexus-data_$TIMESTAMP"