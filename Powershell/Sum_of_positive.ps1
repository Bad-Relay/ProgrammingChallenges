# This script has a function that will add the numbers in an arry if the elements are postive. 

function Get-SumOfPositive($NumberArray)
{
    $sum = 0
    ($NumberArray).Where{ $_ -ge 0 } | Foreach { $sum += $_}
    $sum
}

Get-SumOfPositive -NumberArray @(1, 2, 3, 4, -5)
