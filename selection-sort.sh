#!/bin/bash

values=(39 5 8 65 2 126 0 87 9 34 98)
numvalues=${#values[@]}

for (( i=0; i < numvalues; i++ )); do
  lowest=$i

  for (( j=i; j < numvalues; j++ )); do
    if [ ${values[j]} -le ${values[$lowest]}]; then
      lowest=$j
    fi
  done

  temp=${values[i]}
  values[i]=${values[lowest]}
  values[lowest]=$temp
done

for (( i=0; i < numvalues; i++)); do
  echo -ne "${values[$i]}\t"
done

echo
