#!/bin/bash



#This is for the IP Validation assigment 
#This will check if the ip address meets the follwoing requirments
# All numbers or dots
# 4 Oct
# Numbers are not bigger then 255


adr="$1" #Gets the input from the comand line

IFS="." # Will split the string up by oct using the dots

vaild="True" # result var

read -a ip <<< "$adr" # Set an array var called ip split up by the dots


if [ ${#ip[*]} -ne 4  ] || [[ $adr =~ [a-z]|[A-Z]|\s|-+ ]] # If more then octs and if there is a letter, space or negtive number 
then
	vaild="False"
	echo $vaild # return false and exit program
	exit #Exit beacuse the letter will alter the remaining tests 
fi


for oct in "${ip[@]}"; #For each oct 
do

	if [ $oct -gt 255 ] || [[ $oct =~ ^0{1,2}. ]] # if the number is bigger then 255 or has a leading 0 set to false 
	then
		vaild="False"
	fi
done

echo $vaild # return result
