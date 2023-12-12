#!/bin/bash

# backing up the files in a directory 
pwd
tar -cvzf scripts.tar.gz *sh
command = `ls -lrt | grep tar | awk '{print $9}'`
echo " we have taken the backup of the files to new file called $command"