#!/bin/bash

WordArray=( `cat "short-word-list.txt"` )

# echo ${WordArray[@]}

for word in "${WordArray[@]}"
do
	echo $word
done

echo "Those are the words, yay!"