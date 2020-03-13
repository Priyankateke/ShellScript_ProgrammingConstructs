#!/bin/bash -x
read -p "Enter the number : " number
numberLength=${#number}
if [ $numberLength -eq 1 ]; then
	if [ $number -eq 1 ]; then
		number="One"
	elif [ $number -eq 2 ]; then
		number="Two"
	elif [ $number -eq 3 ]; then
		number="Three"
	elif [ $number -eq 4 ]; then
		number="Four"
	elif [ $number -eq 5 ]; then
		number="Five"
	elif [ $number -eq 6 ]; then
		number="Six"
	elif [ $number -eq 7 ]; then
		number="Seven"
	elif [ $number -eq 8 ]; then
		number="Eight"
	elif [ $number -eq 9 ]; then
		number="Nine"
	fi
else
	echo "Invalid Number"
fi
