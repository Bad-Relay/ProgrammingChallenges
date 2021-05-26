#!/bin/bash

#This is for the "Sum by Factor" for code words
#This program will take a list of numbers and get the factor of each one 
#Then add that number to a total sum
#example use ./factorsum "12 15 -45"

input=$1

result="" #empty string for result 

declare -iA rmap #map for results 


 #A function to get prime factor and add it to the hash map
factor_p () {

	in=${1#-} #absolte value for factor command 

	fact=$(factor $in | cut -d ":" -f 2 | tr " " "\n"| uniq) # get a list of prime factors and get rid of duplicates. Cut command was used to not include the number being factored 

	for f in $fact
	do
			rmap[$f]+=$1 #using the factor as a key add the value of the number being tested 
	done	
	
	}

input=$(echo $input|tr " " "\n"|sort -rg) #take the input and sort it by smallst to largest 


for num in $input
do
	
	factor_p $num #calls fuction to add primes and sums to the hash map
done

keys="${!rmap[@]}"

keySort=$(echo $keys|tr " " "\n"|sort -g)  #Two var to get the keys and sort them from smallst to largst 


for val in $keySort
do
	sum=${rmap[$val]}
	result+="($val,$sum) " #display both key and value inside a () 
done
echo $result #return result to consol
