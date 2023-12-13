#!/bin/bash

#first find the no of lines in a text file
var=$(ls -lrt | grep sh | awk '{print $9}')
for i in $var
do
count=$(cat $i | wc -l)
echo "the file $i count is $count"
done
#thefile=$((ls -lrt | grep sh | awk 'print{$9}'))
#count=$(cat $thefile | wc -l)
#echo "the no of lines in the file $thefile is : $count"
