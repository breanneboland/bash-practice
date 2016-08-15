#/bin/bash

echo $1
echo $2
if [$1 -gt $2]
	then
		echo $1
	else 
		echo $2
fi