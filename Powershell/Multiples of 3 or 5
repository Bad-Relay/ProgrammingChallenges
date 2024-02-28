#Multiples of 3 or 5
#Takes the value of the function and outputs the Multiples of 3 or 5 that is the less then the value
#It then adds them together

function Get-SumOfMultiples($Value)
{
  $result = 0
  
  for(;$i -lt $Value; $i++)
  {
      if (($i % 3 -eq 0) -or ($i % 5 -eq 0))
      {
          $result += $i
      }
  }
return $result
}
