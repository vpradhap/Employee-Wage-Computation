#!/bin/bash

EMP_WAGE_PER_HOUR=20
PRESENT=1
WORKING_HOUR=8
PART_TIME=2

present=$((RANDOM%3))

if [ $present -eq $PRESENT ]
then
	dailywage=$((EMP_WAGE_PER_HOUR * WORKING_HOUR))
	echo "employee is present"
elif [ $present -eq $PART_TIME ]
then
	dailywage=$((EMP_WAGE_PER_HOUR * WORKING_HOUR/2))
	echo "employee is part timer"
else
	dailywage=0
	echo "employee is absent"
fi

echo "employee daily wage : $"$dailywage "USD"

