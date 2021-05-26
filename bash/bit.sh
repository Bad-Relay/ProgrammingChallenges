#!/bin/bash

#This is for the "Bit Counting" challange from code wars

#This will take a number turn into binary
#Then return the amount of ones in the binary form
#Example use ./bit.sh 12345 -> 5

n=$1

binary=$(echo "obase=2;$n" | bc) #turns the input into binary

ones="${binary//0/}" #Removes all 0 from string

echo ${#ones} #return the length of string
