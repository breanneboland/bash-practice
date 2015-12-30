#!/bin/bash

SampleArray[0]="0"
SampleArray[1]="1"
SampleArray[2]="2"
SampleArray[3]="3"
SampleArray[4]="4"

echo ${SampleArray[@]}
echo ${SampleArray[2]}
echo ${SampleArray[@]:1:2}

echo ${SampleArray[@]/"3"/"15"} #Only replaces it for this line's printing, ahahaha
echo ${SampleArray[@]}

echo "Next array!"

OtherSampleArray=("red", "green", "Canadians", "dumb references")

echo ${OtherSampleArray[*]}
echo ${OtherSampleArray[2]}
echo ${#OtherSampleArray[@]}
# Why does this one print the comma at the end of the indexed item? Weird.

OtherSampleArray=("${OtherSampleArray[@]}", "eh", "that's not funny")
echo "Extended array: ${OtherSampleArray[@]}"

# unset OtherSampleArray[2]
# echo ${OtherSampleArray[2]}
# echo ${OtherSampleArray[@]}

pos=3
echo "Taking this one out: ${OtherSampleArray[$pos]}"

OtherSampleArray=(${OtherSampleArray[@]:0:$pos} ${OtherSampleArray[@]:($pos + 1)})

echo ${OtherSampleArray[@]} #Haha, it wasn't working because the array was too short. 

FilteredArray=( ${OtherSampleArray[@]/eh*/} )
echo ${FilteredArray[@]}



