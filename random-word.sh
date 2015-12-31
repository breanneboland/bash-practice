#!/bin/bash

set -euo pipefail
set -x

readonly word_array=( $( cat shorter-words.txt ) )

# for word in "${word_array[@]}"
# do
# 	echo $word
# done

readonly list_length=${#word_array[@]} 
# echo "List length: $ListLength"
random_index=$(( ( RANDOM % list_length ) + 1 ))
echo ${word_array[random_index]}
