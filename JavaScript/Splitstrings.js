/*
This is a script for the Split String challenge from code wars. 

This will split a string into two character pairs and if it is odd add a _ to it. 
*/
function splitstrings(str){

    result = [];

    var indexS = 0;
    var indexE = 1;
    if ((str.length % 2) == 0){ // if the string is even split into pair if it is odd add a _ to the end. 
      for (i = 0; i < str.length/2 ; i++)
        {
          result.push(str[indexS]+str[indexE]); // Adds the pair to the result array
          indexS = indexS + 2; // goes up to the nex pair.
          indexE = indexE + 2;
        }
      
      return result;

    }
    else{
    
      for (i =0; i < (str.length/2 -1) ; i++){
        result.push(str[indexS]+str[indexE]);
        indexS = indexS + 2;
        indexE = indexE + 2;
      }
      
      result.push(str[str.length - 1]+"_"); // Adds the _ to the end. 
      return result;

    }
   }