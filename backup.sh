#!/bin/bash

/bin/tar  -cjf /root/backups/phantombot-$(/bin/date +\%Y-\%m-\%d-\%H_\%M_\%S_\%3N).tar.bz2 /root/docker/phantombot/ >>/root/backups/backup_phantombot.log 2>&1
aws s3 sync /root/backups/ s3://${BACKUP_S3_BUCKET_NAME}/