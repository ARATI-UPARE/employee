#! /bin/bash

isPresent=1
randomCheck=$((RANDOM%2))
if [ $randomCheck == $isPresent ]
then
		echo Employee is Present
else
		echo Employee is Absent
fi
