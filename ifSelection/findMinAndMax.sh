#!/bin/bash -x
firstValue=$(( RANDOM%900+100 ))
secondValue=$(( RANDOM%900+100 ))
thirdValue=$(( RANDOM%900+100 ))
forthValue=$(( RANDOM%900+100 ))
fifthValue=$(( RANDOM%900+100 ))

maximum=$firstValue
minimum=$firstValue

if [[ $maximum -le $secondValue ]]; then
	maximum=$secondValue
fi
if [[ $maximum -le $thirdValue ]]; then
	maximum=$thirdValue
fi
if [[ $maximum -le $forthValue ]]; then
	maximum=$forthValue
fi
if [[ $maximum -le $fifthValue ]]; then
	maximum=$fifthValue
fi
if [[ $minimum -ge $secondValue ]]; then
	minimum=$secondValue
fi
if [[ $minimum -ge $thirdValue ]]; then
	minimum=$thirdValue
fi
if [[ $minimum -ge $forthValue ]]; then
	maximum=$forthValue
fi
if [[ $minimum -ge $fifthValue ]]; then
	maximum=$fifthValue
fi

echo -e "Minimum value is : $minimum\nMaximum value is : $maximum"
