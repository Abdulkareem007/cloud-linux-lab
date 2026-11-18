#!/bin/bash
# Compresses the notes folder into a timestamped archive

SOURCE="$HOME/cloud-linux-lab/notes"
DEST="$HOME/backups"
STAMP=$(date +%Y-%m-%d_%H-%M)

mkdir -p "$DEST"
tar -czf "$DEST/notes-$STAMP.tar.gz" "$SOURCE"
echo "Backup saved to $DEST/notes-$STAMP.tar.gz"
