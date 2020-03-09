#!/bin/bash -x
isFullTime=1
isPartTime=2
EMP_WAGE_PER_HR=20
empCheck=$((RANDOM%3))
if [ $empCheck -eq $isFullTime ]
then
	empHrs=8
elif [ $empCheck -eq $isPartTime ]
then
	empHrs=4
else
	empHrs=0
fi
dailyWage=$(( $empHrs*$EMP_WAGE_PER_HR ))
echo $dailyWage


