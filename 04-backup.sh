#!/bin/bash

# backing up the files in a directory 
pwd
tar -cvzf scripts.tar.gz *sh
thefile = $(ls -lrt | grep tar | awk '{print $9}')
#echo "Most recent tar file is: $thefile"
print -r "Most recent screenshot is: $thefile"
var1 = ls -lrt
echo $var1