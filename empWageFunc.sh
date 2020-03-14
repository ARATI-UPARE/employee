#! /bin/bash -x

# Calculate Employee Wages for a month.

# Constants used in code
isPartTime=1
isFullTime=2
maxHrsInMonth=4
empRatePerHr=20
noWorkingDays=20

# Variables
totalEmpHr=0;
totalWorkingDays=0

function getWorkingHrs() {
		case $1 in
				$isFullTime)
						workHrs=8
						;;
				$isPartTime)
						workHrs=4
						;;
				*)
						workHrs=0
						;;
				esac
				echo $workHrs
}

while [[ $totalWorkHr -lt $maxHrsInMonth && $totalWorkingdays -lt $noWorkingDays ]]
do
		(( totalWorkingDays++ ))
		workHrs="$( getWorkingHrs $(( RANDOM%3 )) )"
		totalWorkHr=$(( $totalWorkHr + $workHrs ))
done
totalSalary=$(( $totalWorkHr * $empRatePerHr))
echo $totalSalary

