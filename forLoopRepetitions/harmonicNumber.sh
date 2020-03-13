#!/bin/bash -x

#constants
readonly NUMBER=$1

#variables
harmonicNumber=0

for(( counter=1; counter<=$NUMBER; counter++ ))
do
	harmonicNumber=$( echo " scale=2; $harmonicNumber+1/$counter" | bc )
done

echo "Harmonic Number : $harmonicNumber"
