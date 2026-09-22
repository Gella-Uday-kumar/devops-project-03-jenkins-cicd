#!/bin/bash
echo "Rolling back to previous deployment..."
BACKUP=$(ls -td /var/www/app_backup_* | head -1)
if [ -d "$BACKUP" ]; then
  rm -rf /var/www/app
  cp -r "$BACKUP" /var/www/app
  echo "Rollback complete."
else
  echo "No backup found."
  exit 1
fi
