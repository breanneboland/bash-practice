# FILE=./phone-file.txt
# SUBSTRING="http"

# echo "$FILE"

# if echo "$FILE" | grep -q "$SUBSTRING"; then
# 	echo "matched";
# else
# 	echo "no match";
# fi 

PATTERN=$1
FILE=$2

for line in $FILE: 
if grep -q $PATTERN $line;
	 then
	     echo "Here are the Strings with the Pattern '$PATTERN':"
	     echo -e "$(grep $PATTERN $FILE)\n" >> cubby-file.txt
	 else
	     echo "Error: The Pattern '$PATTERN' was NOT Found in '$FILE'"
	     echo "Exiting..."
	     exit 0
fi