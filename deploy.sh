#!/bin/bash

LOGFILE=/var/www/project/deploy.log

echo "Deployment started at $(date)" >> $LOGFILE

cd /var/www/project || exit
git pull origin main >> $LOGFILE 2>&1

echo "Deployment finished at $(date)" >> $LOGFILE
