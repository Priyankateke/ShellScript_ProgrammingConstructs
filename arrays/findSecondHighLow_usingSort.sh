#!/bin/bash -x

function generateRandomNumbers()
{
	for(( i=0;i<10;i++ ))
	do
		numbers[i]=$((RANDOM%900 + 100))
	done
}

function sortNumbers()
{
	for(( i=0;i<10;i++ ))
	do
		for(( j=i+1;j<10;j++))
		do
			if (( numbers[i] > numbers[j] ))
			then
				temp=${numbers[j]}
				numbers[j]=${numbers[i]}
				numbers[i]=$temp
			fi
		done
	done
	echo "${numbers[@]}"
}

generateRandomNumbers
sortNumbers
secondSmallest=${numbers[1]}
secondLargest=${numbers[8]}
