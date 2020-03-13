#!/bin/bash -x

number=$1

for(( counter=1; counter<=$number; counter++ ))
do
	echo "$((2**$counter))"
done
