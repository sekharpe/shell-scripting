#!/bin/bash

# backing up the files in a directory 
pwd
tar -cvzf scripts.tar.gz *sh
file = $((ls -lrt | grep tar | awk '{print $9}'))
echo $file