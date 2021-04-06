#Makes a  Multiplication table given a value and will go up to the end value 
#returns as a string   
  
  
  function Multi-Table ([int] $value, [int] $end = 10) {

 $result =''
 for ($num = 1 ; $num -le $end ; $num++){
      $multi = $num * $value;
      if ($num -eq $end){
      $result += "$num * $value = $multi"; #removes the new line for the last value 
      }
      else{
      $result += "$num * $value = $multi`n";
      }
  }
  $result;
  
  
  }


#Example use:  Multi-Table  -value 3
#Example use:  Multi-Table  -value 5 -end 20