#!/bin/bash -x
args=("$@")
echo $@
month=${args[0]}
day=${args[1]}
year=${args[2]}

year=$(( $year-(14-$month)/12 ))
x=$(( $year+$year/4-$year/100+$year/400 ))
month=$(($month+12*((14-$month)/12)-2  ))
day=$(( ($day+$x+31*$month/12)%7 ))

if [ $day -eq 0 ]; then 
	echo "Sunday"
elif [ $day -eq 1 ]; then 
	echo "Monday"
elif [ $day -eq 2 ]; then 
	echo "Tuesday"
elif [ $day -eq 3 ]; then 
	echo "Wednesday"
elif [ $day -eq 4 ]; then 
	echo "Thursday"
elif [ $day -eq 5 ]; then
	echo "Friday"
elif [ $day -eq 6 ]; then 
	echo "Sunday"
fi
