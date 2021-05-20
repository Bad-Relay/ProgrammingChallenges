#!/bin/bash

#This is for the "Return the latest modified file" for code wars 
# This will return the file that was the most recent modified file 

# the ls sorts by modified starting with longest at the top

# The awk get's the last word witch is the latest modified file

ls -ltrh | awk 'END {print $NF}'  
