#!/bin/bash -x

#variables
factorial=1

read -p "Enter the number : " number

for(( counter=1; counter<=number; counter++))
do
	factorial=$((factorial*counter))
done

echo "Factorial of $number is : $factorial"
