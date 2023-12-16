#!/bin/bash

#Write a script that reads a text file and counts the occurrences of each word, displaying the top 5 most frequent words along with their counts.

#In a small, small town, there lived a man named John. John was a man of simple, simple tastes and a routine, routine life. Every day, day after day, he would wake up early, early in the morning and go for a walk, walk around the quiet, quiet streets of the town.


#var=$(ls -lrt | awk '{print $9}')
#filename=$(ls -lrt | grep wordfile | awk '{print $9}')
#count=$(cat wordfile | wc -w)

for i in {1..52}
do
match_word=$(awk -v i="$i" '{print $i}' wordfile)
#search_word=$(grep -o -i $(match_word) wordfile | wc -l)
#echo "the no of occurances of the word $(match_word) is $(search_word)"

echo " the match word is printing here $match_word"
done
#count=count+1

#awk '{print $1}' $filenam

#cat wordfile | grep -o -i $(match_word) | wc -l #count the no of occurances of a matching word