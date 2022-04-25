#!/bin/bash

EMP_WAGE_PER_HOUR=20
PRESENT=1
WORKING_HOUR=8
PART_TIME=2
MAX_WORKING_DAY=20

totalsalary=0

for (( day=0;day<$MAX_WORKING_DAY; day++ ))
do
	present=$((RANDOM%3))

	case $present in

		$PRESENT)
			dailywage=$((EMP_WAGE_PER_HOUR * WORKING_HOUR))
		;;

		$PART_TIME)
			dailywage=$((EMP_WAGE_PER_HOUR * WORKING_HOUR/2))
		;;

		*)
			dailywage=0
		;;
	esac

	totalsalary=$((totalsalary + dailywage))
done

echo "employee monthly wage : $"$totalsalary "USD"

