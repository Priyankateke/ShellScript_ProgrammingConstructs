#!/bin/bash -x
read -p "Enter the value of a, b and c : " a b c
operation1=$((a+b*c))
operation2=$((a%b+c))
operation3=`echo "scale=2; $c+$a/$b" | bc`
operation4=$((a*b+c))
