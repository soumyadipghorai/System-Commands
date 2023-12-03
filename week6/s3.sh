#!/bin/bash 
BFILE=/mnt/d/mkbackup.log
echo "starting back automatically..." >> $BFILE
date >> $BFILE
echo "backup completed..." >> $BFILE
echo "............" >> $BFILE

# -----------------
crontab -e # open the crontab 
# 27 * * * * cd path_of_backup && script 