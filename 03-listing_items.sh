#!/bin/bash

# listing the files and folders in a directory
echo " listing the files in the present working directory"
ls -lrt
# list the file names having pattern "sh" in the last
echo " listing the files having the sh pattern"
ls -lrt | grep sh