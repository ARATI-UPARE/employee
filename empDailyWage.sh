#! /bin/bash -x

# Calculate Employee Wages for a month.

# Constants used in code
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
noWorkingDays=20

# Variables
totalWorkHrs=0
totalWorkingDays=0

# Function to get working hours of employee
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

# Function to get daily wage of emplyee 
function dailyWage() {
		local workHrs=$1
		wage=$(( $workHrs * $empRatePerHr ))
		echo $wage
}

while [[ $totalWorkHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $noWorkingDays ]]
do
		(( totalWorkingDays++ ))
		workHrs="$( getWorkingHrs $(( RANDOM%3 )) )"
		totalWorkHrs=$(( $totalWorkHrs + $workHrs ))
		empDailyWage[ $totalWorkingDays ]="$( dailyWage $workHrs )"
done

totalSalary="$( dailyWage $totalWorkHrs )"
echo "Daily Wage " ${empDailyWage[@]}

