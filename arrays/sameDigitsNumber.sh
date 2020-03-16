#!/bin/bash -x

#variables
counter=0

for i in {0..100}
do
	numbers[i]=$((i+1))
	if [[ ${numbers[i]:0:1} -eq ${numbers[i]:1:1} ]]
	then
		sameDigitsNumber[((counter++))]=${numbers[i]}
	fi
done
