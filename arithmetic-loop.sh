#!/bin/bash

for (( i=1; i <= 12; i++ ))
do
  echo "It's "$i"s!"
  for (( j=1; j <= 12; j++ ))
  do
    echo -ne "$(( j * i ))\n"
  done

  echo
done
