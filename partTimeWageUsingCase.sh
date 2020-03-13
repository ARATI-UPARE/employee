#! /bin/bash -x

# Calculate Employee Wages for Full time and Part time.
isPartTime=1
isFullTime=2
empRatePerHr=20
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

salary=$(( $empHrs * $empRatePerHr))
echo " Employee wage is $salary"
