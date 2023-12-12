#!/bin/bash

# backing up the files in a directory 
pwd
tar -cvzf scripts.tar.gz *sh
var = `ls -lrt | grep gz`
echo " we have taken the backup of the files to new file called $var"