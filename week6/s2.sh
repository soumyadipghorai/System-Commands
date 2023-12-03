#!/bin/bash 
# number of files in home directory 
find $HOME -print | wc -l 

# files modified in last 2 days 
find $HOME -mtime -2 -print

find . -mtime -2 -print

# more than a month 
find . -mtime +30 -print

# directory or files with man___
find /usr -type d -name "man*" -print

# directory or files with man_
find /usr -type d -name "man?" -print

# files with size > 10M
find . -size +10M -print

# in a human readable format 
find . -size +10M -exec ls -lsh {} \;

# find jpg files 
find . -name '*.jpg' -exec ls -sh {} \;

# get log files 
cp -r /var/log logfiles 
du -sh # size 
tar -cvf help.tar vscode/help/ # compress the files in vscode into help.tar 
gzip hep.tar # reduces the size 10times 
bzip2 hep.tar # better reduction more time 
compress hep.tar # faster less reduction
bzip2 -d hep.tar.bz2 #unzip

# takes backup
make -f make.file backup