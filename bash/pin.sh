#!/bin/bash

# This is for the challange Crack the Pin from code wars
# This script takes a md5 hash of a 5 pin code and returns the code in plain text via brute forcing 

pin=$1 #Take the argument for the hash 



# Differnt var to repersent the place in the digets 
place=0

first=0

secound=0

third=0

forth=0

fifth=0


for i in {1..100000} # At the time I did not know you could have starting value of 00000 so I ened up hard coding it myself 
do
	md5=($(echo -n  "$first$secound$third$forth$fifth" | md5sum)) # Check the current ressult and get the md5 hash of it
	

	if [ "$md5" = "$pin" ] #If the hash matches the imput return the number in plain text
	then
		echo "$first$secound$third$forth$fifth"
		break
	fi



	let "fifth=fifth+1" #Add a number to the last diget 


	# If the max limit for each diget is reached move on the the next one
	if [[ $fifth -gt 9 ]] && [[ $forth -eq 9 ]] && [[ $third -eq 9 ]] && [[ $secound -eq 9 ]]
	then
		let "fifth=0"
		let "forth=0"
		let "third=0"
		let "secound=0"
		let "first=first+1"

	elif [[ $fifth -gt 9 ]] && [[ $forth -eq 9 ]] && [[ $third -eq 9 ]]
	then
		let "fifth=0"
		let "forth=0"
		let "third=0"
		let "secound=secound+1"
	elif [[ $fifth -gt 9 ]] && [[ $forth -eq 9 ]]
	then
		let "fifth=0"
		let "forth=0"
		let "third=third+1"
	elif [[ $fifth -gt 9 ]]
	then
		let "fifth=0"
		let "forth=forth+1"

	fi


done







