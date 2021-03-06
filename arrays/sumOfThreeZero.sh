#!/bin/bash -x

function getNumbers()
{
	read -p "How many numbers you want to enter : " size
	echo "Enter the $size numbers "
	for(( i=0;i<size;i++ ))
	do
		read numbers[i]
	done
}

function findNumbersAddsToZero()
{
	echo "Elements whose sum is Zero : "
	length=${#numbers[@]}
	for(( i=0;i<length;i++ ))
	do
		for(( j=i+1;j<length;j++ ))
		do
			for(( k=j+1;k<length;k++ ))
			do
				if (( numbers[i] + numbers[j] + numbers[k] == 0 ))
				then
					echo "(${numbers[i]}) + (${numbers[j]}) + (${numbers[k]}) = 0"
				fi
			done
		done
	done
}
getNumbers
findNumbersAddsToZero
