LIST="This is a longer string that I will be searching inside of"
SOURCE="string"

if echo "$LIST" | grep -q "$SOURCE"; then
	echo "matched";
	
else
	echo "no match";
fi 