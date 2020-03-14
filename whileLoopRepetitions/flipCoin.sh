#!/bin/bash -x

#constants
COUNT=11
HEAD=0

#variables
headCount=0
tailCount=0

while [ $headCount -lt $COUNT ] && [ $tailCount -lt $COUNT ]
do
	randomNumber=$(( RANDOM%2 ))
	if [ $randomNumber -eq $HEAD ]; then
		headCount=$(( headCount+1 ))
	else
		tailCount=$(( tailCount+1 ))
	fi
done

if [ $headCount -eq $COUNT ]; then
	echo "Head won"
else
	echo "Tail won"
fi
