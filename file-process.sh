#!/bin/bash
# while read p
# 	# do
# 	# 	echo $p >> file-copy.txt
# 	# done <$1
# 	if [[ $p == *"http"* ]]
# 		then
# 			echo $p
# 			echo "Found a website!"
# 	else
# 		echo "Nope!"
# fi
PATTERN=$1
FILE=$2
# while read $file
# if grep -Fxq "$letters" phone-file.txt
# 	then
# 		echo "We have ourselves a website"
# 	else
# 		echo "No website here"
# fi
if grep -q $PATTERN $FILE;
	then
		echo "Here are the file lines with the pattern '$PATTERN': "
		echo "$(grep $PATTERN $FILE)" 
	else
		echo "Sorry, '$PATTERN' was not found in '$FILE'"
		exit 0
fi