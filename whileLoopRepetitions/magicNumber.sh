#!/bin/bash -x

#variables
low=1
high=100

echo "Think any number between 1 to 100 "
while [ $low -le $high ]
do
	mid=$(( ($low+$high)/2 ))
	read -p "If your number is less than $mid press 'y', if greater than $mid press 'n', otherwise press 'f' : " answer
	if [[ $answer == "f" ]]; then
		echo "Your number is $mid"
		break
	elif [[ $answer == "y" ]]; then
		high=$(($mid-1))
	elif [[ $answer == "n" ]]; then
		low=$((mid+1))
	fi
	mid=$(( (low+high)/2 ))
done
