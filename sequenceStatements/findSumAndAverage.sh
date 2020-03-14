#!/bin/bash -x

#constants
TOTAL_VALUES=5

#variables
sum=0

#getting 5 random 2 digit number and calculating sum
for(( counter=1;counter<=TOTAL_VALUES;counter++ ))
do
	sum=$(( sum+(RANDOM%90+10) ))
done

#average of 5 random 2 digit numbers
average=$((sum/TOTAL_VALUES))
