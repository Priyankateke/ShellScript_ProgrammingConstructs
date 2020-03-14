#!/bin/bash -x

firstDiceNumber=$(( RANDOM%6+1 ))
secondDiceNumber=$(( RANDOM%6+1 )) 
diceNumberAddition=$(( firstDiceNumber+secondDiceNumber ))
echo "Addition : " $diceNumberAddition

