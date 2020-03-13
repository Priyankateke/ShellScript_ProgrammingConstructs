#!/bin/bash -x
read -p "Enter three number : " a b c

operation1=$(($a+$b*$c))
operation2=$(($a%$b+$c))
operation3=$(($c+$a/$b))
operation4=$(($a*$b+$c))

maximum=$operation1
minimum=$operation1

if [[ $maximum -le $operation2 ]]; then
	maximum=$operation2
fi
if [[ $maximum -le $operation3 ]]; then
	maximum=$operation3
fi
if [[ $maximum -le $operation4 ]]; then
	maximum=$operation4
fi
if [[ $minimum -ge $operation2 ]]; then
	minimum=$operation2
fi
if [[ $minimum -ge $operation3 ]]; then
	minimum=$operation3
fi
if [[ $minimum -ge $operation4 ]]; then
	maximum=$operation4
fi
echo "Maximum result is : $maximum"
echo "Minimum result is : $minimum"
