#!/bin/bash

#first find the no of lines in a text file
var=$(ls -lrt | grep sh | awk '{print $9}')
for i in $var
do
count=$(cat $i | wc -l)
read -p "enter the name that you want to search in the file: " search
#prompt=$(cat $i | grep $search)
#exit_status=$($?)
#echo "the file $i count is $count"
#if($(exit_status) -ne 0)
#then
#echo "the file $i count is $count and seach patter not found in the file"
#else
#echo "the file $i count is $count and search pattern is found that is $prompt"
#fi
search_line=$(grep -i $search $i)
if [ $? -eq 0 ]
then
    echo "The word '$search' was found in '$i' it has $count lines in the file and the search pattern line is $search_line ."
else
    echo "The word '$search' was not found in '$i' it has $count lines in the file and the search pattern was not found."
fi
done
#thefile=$((ls -lrt | grep sh | awk 'print{$9}'))
#count=$(cat $thefile | wc -l)
#echo "the no of lines in the file $thefile is : $count"
