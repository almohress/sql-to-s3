#!/bin/bash

BACKUP_FILENAME=/tmp/$(date +"%Y-%m-%d").sql
mysqldump --all-databases -u root -p$MYSQL_ROOT_PASSWORD > $BACKUP_FILENAME
s3cmd put $BACKUP_FILENAME s3://$BACKUP_BUCKET_NAME

