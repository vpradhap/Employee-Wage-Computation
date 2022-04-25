#!/bin/bash

EMP_WAGE_PER_HOUR=20
PRESENT=1
WORKING_HOUR=8

present=$((RANDOM%2))

if [ $present -eq $PRESENT ]
then
	dailywage=$((EMP_WAGE_PER_HOUR * WORKING_HOUR))
	echo "employee is present"
else
	dailywage=0
	echo "employee is absent"
fi

echo "employee daily wage : $"$dailywage "USD"

