#!/bin/bash -x

declare -A birthMonthDict

for (( i=0;i<50;i++ ))
do	
	month=$((RANDOM%12+1))
	birthMonthDict["$month"]=$((${birthMonthDict["$month"]}+1))
done

echo "Month : Persons"
for i in ${!birthMonthDict[@]}
do
	echo "$i : ${birthMonthDict[$i]}"
done | sort -k1 -n
