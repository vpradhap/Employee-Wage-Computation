#!/bin/bash

present=$((RANDOM%2))

if [ $present -eq 1 ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi

