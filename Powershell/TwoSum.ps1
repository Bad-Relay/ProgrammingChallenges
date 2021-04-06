<#
This script will see what two numbers (from a list) add up to the target number
It will return the index of the two numbers as a list
#>

function Get-TwoSum ([System.Array]$numbers, [int]$target)
{
   $i = $numbers.length 
 
   $num2 = 0
   foreach ($element in $numbers) {

    $num1 = $numbers.Where{ ($_ + $numbers[$i]) -eq $target }
   
    if($num1){
     break
    }
     $i = $i- 1

    }
    $num1[0]
     return @([array]::indexof($numbers,$num1[0]),$i)
}


#Example use
#Get-TwoSum -numbers @(1, 2, 3) -target 4
#Index:                0  1  2

#WIll return (0,2) 

#Get-TwoSum -numbers @(1234, 5678, 9012) -target 14690