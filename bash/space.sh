#!/bin/bash

# This is for the Remove String Space 
# Short script to remove spaces from a string
var="$1" # Sets the input to a variable 


echo $var | sed -r 's/\s+//g' #Use sed sub to remove any spaces with greedy
