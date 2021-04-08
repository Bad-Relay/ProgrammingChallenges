<#
For "Playing with digits" from code wars 

This scirpt will take two inputs a number and the starting power
It will then take each digit and apply the power var going up by one for each digit 
Then add up all the results 
Then divide the number by the orinal number 
If the end result is not a whole number it will then return a -1

INput= Number = 89 and Power = 1

Example: 89 --> 8¹ + 9² = 89 /89 = 1


#>


function dig-pow($n, $p) 
{
 $test = $n -split '(?=\d)(?<=\d)' # Will make a list with each digit and give it to the test var


 for($i = 0; $i -le $test.count -1 ; $i++){ #run for each element in the list
   $end = [int]$test[$i]  # Set the end var to a digit from the test index and sets it as a int for math
   
   $result += [Math]::Pow($end,$p) # add the result and got to the power of $p

   $p++ # Bring the power up by one each time the loop runs
 
 }
 if($result % $n -eq 0){ #if you divide the result by the origanal number is a whole number
 
 $result/$n
 
 }
 else{
 -1
 }
}
# Example use
#dig-pow -n 89 -p 1