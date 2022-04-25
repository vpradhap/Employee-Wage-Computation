#!/bin/bash

EMP_WAGE_PER_HOUR=20
PRESENT=1
WORKING_HOUR=8
PART_TIME=2

present=$((RANDOM%3))

case $present in

	$PRESENT)
		dailywage=$((EMP_WAGE_PER_HOUR * WORKING_HOUR))
		echo "employee is present"
	;;

	$PART_TIME)
		dailywage=$((EMP_WAGE_PER_HOUR * WORKING_HOUR/2))
		echo "employee is part timer"
	;;

	*)
		dailywage=0
		echo "employee is absent"
	;;

esac

echo "employee daily wage : $"$dailywage "USD"

