#!/bin/bash



#This is for the Human readable duration format challange from code wars
#This script has a function that take a number of secounds and makes it into a readable format 
# So 3 will turn into 3 secounds 
# If there are mutiple of a value it will add a "s" to the end of the word
# IF there are 3 values on display it will have a comma each ending with an "and"
# Example: 1 day, 1 hour and 5 secounds 

function duration(){

dur=$1
sec=0
min=0
hour=0
day=0
year=0
result=""

#This will check if the input is zero and return now. 
if [[ $dur -eq 0 ]]
then
	echo "now"
	exit
fi

#This will check if the input matches year, day, hour, min and sec in seccounds then subtract that value and test again intill zero

while [ $dur -gt 0 ]
do
	if [[ $dur -ge 31536000 ]] #check for year 
	then
		let "dur=dur-31536000"
		((year++)) 

	elif [[ $dur -ge 86400 ]] #check for day
	then
		let "dur=dur-86400"
		((day++))
	elif [[ $dur -ge 3600 ]] #check for hour
	then
		let "dur=dur-3600"
		((hour++))
	
	elif [[ $dur -ge 60 ]] #check for min
	then
		let "dur=dur-60"
		((min++))		

	elif [[ $dur -ge 1 ]] #check for sec
	then
		let "dur=dur-1"
		((sec++))
	
	fi
done

words=("year" "day" "hour" "minute" "second") # A array with strings to add to the result

index=0 #an index var to cycle though the array

for t in $year $day $hour $min $sec #cycle though all the vars that where calucalted during the while loop
do
	if [[ t -gt 1 ]] # If there are mutiple of an element add it to the result with an s and comma at the end
	then
		result+="$t ${words[$index]}s, "
	elif [[ t -gt 0 ]]  # IF only one just add the comma 
	then
		result+="$t ${words[$index]}, "
	
	fi
	((index++))
done

echo ${result%??} | sed 's/\(.*\),/\1 and/' #Get rid of the extra space and coomma and then replace the last comma with the word "and" 

}

duration "$1"
