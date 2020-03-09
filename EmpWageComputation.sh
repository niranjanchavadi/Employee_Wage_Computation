#!/bin/bash -x
IS_FULL_TIME=1
IS_PART_TIME=2
TOTAL_WORKING_HRS=100
WORKING_DAY_PER_MONTH=20
EMP_WAGE_PER_HR=20
totalWorkingDays=0
totalEmployeeHrs=0
function getWorkHrs() {
	empCheck=$1
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
	echo $empHrs
}
while (( $totalWorkingDays < WORKING_DAY_PER_MONTH && totalEmployeeHrs < $TOTAL_WORKING_HRS ))
do
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmployeeHrs=$(($totalEmployeeHrs+$empHrs));
	((totalWorkingDays++))
	dailyWage[totalWorkingDays]=$(( $empHrs*$EMP_WAGE_PER_HR ))
done
totalSalary=$(( $totalEmployeeHrs*$EMP_WAGE_PER_HR ));
dailyWage[totalWorkingDays]=$totalSalary
echo ${dailyWage[@]}
