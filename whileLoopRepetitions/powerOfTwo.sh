#!/bin/bash -x

#constants
readonly REACHED_POSITION=256

#variables
number=$1
counter=1
powerOfTwo=0

while [[ $counter -le $number && $powerOfTwo -lt $REACHED_POSITION ]]
do
	powerOfTwo=$((2**$counter))
	echo "$powerOfTwo"
	counter=$((counter+1))
done
