#!/bin/bash -x
read -p "Enter the Year : " year

if [[ $year%400 -eq 0 || $year%4 -eq 0 && $year%100 -ne 0 ]]; then
	echo "Year $year is Leap Year"
else
	echo "Year $year is not Leap Year"
fi
