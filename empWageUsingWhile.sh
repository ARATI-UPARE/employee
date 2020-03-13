#! /bin/bash -x

# Calculate Employee Wages for a month.

# Constants used in code
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
noWorkingDays=20

# Variables
totalEmpHr=0;
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingdays -lt $noWorkingDays ]]
do
		(( totalWorkingDays++ ))
		empCheck=$((RANDOM%3))
		case $empCheck in
				$isFullTime)
				empHrs=8
				;;
				$isPartTime)
				empHrs=4
				;;
				*)
				empHrs=0
				;;
		esac
		totalEmpHr=$(( $totalEmpHr + $empHrs ))
done
totalSalary=$(( $totalEmpHr * $empRatePerHr))
echo $totalSalary
