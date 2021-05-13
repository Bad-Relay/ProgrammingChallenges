#!/bin/bash

# This is for the String Repeat challange for code wars
# This will take a number and then print a string that number of times 

repeat=$1 # Sets an Arg in the first postion affter the command
string=$2 # Set an Arg affter repeat for the word that will print multiple times

if [ -z "$repeat" ] || [ -z "$string" ] #If either the args empty it will then print on how to use the script
do
	echo "Arguments" 
	echo "Repeat number"
	echo "String to repeat"
	echo "Example use: ./repeat.sh 3 test"
done

for (( i = 1; i <= $repeat ; i++ )) #A for loop that will run off the repeat var
do
	echo $string #echo the inputed string
done
