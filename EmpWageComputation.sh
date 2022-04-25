#!/bin/bash

EMP_WAGE_PER_HOUR=20
PRESENT=1
WORKING_HOUR=8
PART_TIME=2
MAX_WORKING_HOUR=100
MAX_WORKING_DAY=20

totalworkinghour=0
day=0

function getworkinghour() {

	case $1 in

		$PRESENT)
			workinghour=$WORKING_HOUR
		;;

		$PART_TIME)
			workinghour=$((WORKING_HOUR/2))
		;;

		*)
			workinghour=0
		;;
	esac
	echo $workinghour
}

while [[ $day -lt $MAX_WORKING_DAY && $totalworkinghour -lt $MAX_WORKING_HOUR ]]
do
	if [ $totalworkinghour -eq $((MAX_WORKING_HOUR - WORKING_HOUR/2)) ]
	then
		present=$PART_TIME
	else
		present=$((RANDOM%3))
	fi

	emphr=$(getworkinghour $present)
	dailywage[((day++))]=$(( emphr * EMP_WAGE_PER_HOUR ))
	totalworkinghour=$((totalworkinghour + emphr))
done

totalsalary=$((totalworkinghour * EMP_WAGE_PER_HOUR))

echo "Employee total workinghour : $totalworkinghour hrs"
echo "Employee monthly wage : $totalsalary USD"
echo "Employee total working day : $day"

echo "--------------------------------------------"

for ((i=0;i<${#dailywage[@]};i++))
do
	echo "Day$i Earnings :$"${dailywage[i]} "USD"
done











