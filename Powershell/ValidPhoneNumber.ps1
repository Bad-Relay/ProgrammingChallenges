<#

This script check if a string is a vaild phone number 
A vaild phone number in this case is 3 number in a () followed by a space then 3 number then dash with 4 numbers
Example valid phone number (123) 456-7890

#>

function Get-PhoneNumberValidation([String]$PhoneNumber)
{
  $PhoneNumber -match "^\(\d{3}\)\s\d{3}-\d{4}$" #uses regualar expression to check if a vaild phone number then return true if it matches
                       
                       #^\(\d{3}\) checks for (XXX) where x is any number \d is any number \( checks for parentheses ^ make sure the start matches 
                       # \s\d{3}-\d{4} checks for (space)XXX-xxxx \s searches for space
                       # $ makes sure the end is the same so it will return false if uneeded characters are added at the end
} 

# Example use :
#Get-PhoneNumberValidation("(123) 456-7890")
#Get-PhoneNumberValidation -PhoneNumber "(1111)555 2345"