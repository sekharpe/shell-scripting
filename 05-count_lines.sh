#!/bin/bash

#first find the no of lines in a text file
var=$(ls -lrt | grep sh | awk '{print $9}')
for i in $var
do
count=$(cat $i | wc -l)
read -p "enter the name that you want to search in the file: " search
prompt=$(cat $i | grep $search)
exit_status=$($?)
#echo "the file $i count is $count"
if($(exit_status) -ne 0)
then
echo "the file $i count is $count and seach patter not found in the file"
exit 1
else if
echo "the file $i count is $count and search pattern is found that is $prompt"
fi
done
#thefile=$((ls -lrt | grep sh | awk 'print{$9}'))
#count=$(cat $thefile | wc -l)
#echo "the no of lines in the file $thefile is : $count"
