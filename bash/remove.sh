#!/bin/bash

#This is for "Remove first and last character" from code wars
#Simple script that takes a string and removes the first and last character of that string
#Example use: ./remove.sh abc -> b


end=$((${#1} -2)) # take the length of the string and minus it by 2 to get the legth without the first and last character 
echo ${1:1:$end} # takes the string starts at the secoudn place then using length witout the last character. 
