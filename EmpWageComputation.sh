  
#!/bin/bash -x
isFullTime=1
isPartTime=2
EMP_WAGE_PER_HR=20
empCheck=$((RANDOM%3))
case $empCheck in $isFullTime )
	empHrs=8
	;;
	$isPartTime )
	empHrs=4
	;;
	* )
	empHrs=0
	;;
esac
dailyWage=$(( $empHrs*$EMP_WAGE_PER_HR ))
echo $dailyWage

