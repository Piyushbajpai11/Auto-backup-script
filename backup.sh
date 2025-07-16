#!/bin/bash

echo "📂 Source directory input: $1"

# Configuration
SOURCE_DIR="$1"
BACKUP_DIR="./backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"
LOG_FILE="./backup.log"

# Ensure backup directories exists 
mkdir -p "$BACKUP_DIR"

# Validate source directory
if [ -z "$SOURCE_DIR" ] || [ ! -d "$SOURCE_DIR" ]; then
	echo "❌ Invalid source directory. Usage: ./backup.sh /path/to/source"
	exit 1
fi

# Create compressed backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Log the action
echo "$(date):✅ Backup of $SOURCE_DIR saved as $BACKUP_FILE" >> "$LOG_FILE"

# Git Automation
git add "$BACKUP_DIR/$BACKUP_FILE" "$LOG_FILE"
git commit -m "🗂️ Backup: $BACKUP_FILE"
git push origin main
