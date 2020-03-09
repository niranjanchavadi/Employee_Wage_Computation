#!/bin/bash -x
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_WAGE_PER_HR=20
totalWorkingDays=0
totalEmployeeHrs=0
while (( $totalWorkingDays < 20 ))
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in $IS_FULL_TIME )
		empHrs=8
		;;
		$IS_PART_TIME )
		empHrs=4
		;;
		* )
		empHrs=0
		;;
	esac
	totalEmployeeHrs=$(($totalEmployeeHrs+$empHrs));
done
dailyWage=$(( $totalEmployeeHrs*$EMP_WAGE_PER_HR ));
echo $dailyWage

