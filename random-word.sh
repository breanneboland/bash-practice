#!/bin/bash

WordArray=( `cat "shorter-words.txt"` )

# echo ${WordArray[@]}

# for word in "${WordArray[@]}"
# do
# 	echo $word
# done

# echo "Those are the words, yay!"

# WordIndex=$(( ( RANDOM % 10 )  + 1 ))

ListLength=${#WordArray[@]}
# echo "List length: $ListLength"
RandomIndex=$(( ( RANDOM % ListLength )  + 1 ))
echo ${WordArray[RandomIndex]}
