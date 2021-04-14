/*
This code is for task "Find the next perfect square! " from code wars 

The code will take a number and return a number that is the next perfect square.

If the inputed number is not a perfect square then return -1.

*/

function findNextSquare(sq) {
  
    sq = Math.sqrt(sq); // gets the square root of the inputed value.
    if(sq % 1 == 0){
           return (sq + 1) * (sq + 1); // if it's a perfect square then find the next square by adding one and multiplying it by itself. 
    }
    else{
        return -1 // returns -1 if the value is not a perfect square. 
    }
  }

  // Example use:
  // findNextSquare(121); This will return 144. Since the square root is of 121 is 11 and the next perfect square is 144 which is 12 square root. 