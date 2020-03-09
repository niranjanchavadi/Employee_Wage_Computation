#!/bin/bash -x
isPresent=1
EMP_WAGE_PER_HR=20
empCheck=$((RANDOM%2))
if [ $empCheck -eq $isPresent ]
then
	empHrs=8
else
	empHrs=0
fi
dailyWage=$(( $empHrs*$EMP_WAGE_PER_HR ))
echo $dailyWage

