#!/bin/bash 
echo "select a number between 1 and 100"
low=1
high=100
mid=50
while [ $low -le $high ]
do
	echo "enter 1 if the number is less than $mid"
	echo "enter 2 if the number is greater than $mid"
	echo "enter 0 if the number is equal to $mid"
	read choice
	case $choice in
	1)
		high=$(( $mid-1 ))
	;;
	2)
		low=$(( $mid+1 ))
	;;
	0)
		echo "the number is $mid"
		exit
	;;
	*)
		echo "not exist"
		exit
	;;
	esac
	mid=$(( ($low+$high)/2 ))
done
