#!/bin/bash -x

echo -e "Length Conversion\n1. Feet to Inch\n2. Feet to Meter\n3. Inch to Feet\n4. Meter to Feet\nPlease Enter Your Choice : "
read userChoice
read -p "Enter the length : " length

case $userChoice in
	1)
		convertedLength=`expr "$length*12" | bc`
		;;
	2)
		convertedLength=`expr "$length*0.3048" | bc`
		;;
	3)
		convertedLength=`expr "$length*0.0833333" | bc`
		;;
	4)
		convertedLength=`expr "$length*3.28084" | bc`
		;;
	*)
		echo "Invalid Choice"
		exit
		;;
esac

echo "Length After Conversion : $convertedLength"
