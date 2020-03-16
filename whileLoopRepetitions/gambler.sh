#!/bin/bash -x

#constants
MAXIMUM_RS=200
MINIMUM_RS=0

#variables
rupees=100
bet=0
win=0
lose=0

while [ $rupees -lt $MAXIMUM_RS ] && [ $rupees -gt $MINIMUM_RS ]
do
	randomNumber=$(( RANDOM%2 ))
	bet=$((bet+1))
	if [ $randomNumber -eq 1 ]; then
		rupees=$(( rupees+1 ))
		win=$(( win+1 ))
	else
		rupees=$(( rupees-1 ))
		lose=$(( lose+1 ))
	fi
done

if [ $rupees -eq 0 ]; then
	echo "Sorry, You lose the game"
else
	echo  "Congratulations..!! You won the game "
fi

echo -e "Win $win\nlose $lose\nRupees $rupees\nbet $bet"
