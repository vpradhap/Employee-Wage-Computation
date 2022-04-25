#!/bin/bash

EMP_WAGE_PER_HOUR=20
PRESENT=1
WORKING_HOUR=8
PART_TIME=2
MAX_WORKING_HOUR=100
MAX_WORKING_DAY=20

totalworkinghour=0
day=0
while [[ $day -lt $MAX_WORKING_DAY && $totalworkinghour -lt $MAX_WORKING_HOUR ]]
do
	if [ $totalworkinghour -eq $((MAX_WORKING_HOUR - WORKING_HOUR/2)) ]
	then
		present=$PART_TIME
	else
		present=$((RANDOM%3))
	fi
	case $present in

		$PRESENT)
			emphr=$WORKING_HOUR
		;;

		$PART_TIME)
			emphr=$((WORKING_HOUR/2))
		;;

		*)
			emphr=0
		;;

	esac
	totalworkinghour=$((totalworkinghour + emphr))
	((day++))
done

totalsalary=$((totalworkinghour * EMP_WAGE_PER_HOUR))

echo "Employee total workinghour : $totalworkinghour hrs"
echo "Employee monthly wage : $totalsalary USD"
echo "Employee total working day : $day"

