#!/bin/bash

#Is for the challange "n divisible by x and y" from codes
#This will take 3 number and will check if the first number is divisible by x and y

if [ $(( $1 % $2 )) -eq 0 ] && [ $(( $1 % $3 )) -eq 0 ] # checks if the first input is divisible by the last two inputs
then
	echo "true"
else
	echo "false"
fi
