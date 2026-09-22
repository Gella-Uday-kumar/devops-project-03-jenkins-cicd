#!/bin/bash
echo "Backing up current deployment..."
cp -r /var/www/app /var/www/app_backup_$(date +%F_%T)
echo "Backup complete."
