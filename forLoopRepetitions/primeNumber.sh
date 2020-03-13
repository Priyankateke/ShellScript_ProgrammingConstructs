#!/bin/bash -x

read -p "Enter the number : " number
half=$((number/2))

for(( i=2; i<=half; i++ ))
do
	if [ $((number%i)) -eq 0 ]; then
		break
	fi
done

if [ $i -eq $((half+1)) ]; then
	echo "$number is Prime Number"
else
	echo "$number is not Prime Number"
fi
