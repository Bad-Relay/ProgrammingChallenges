/*
This code is for task "Return Negative" from code wars 

The function will take a int and return that value as a negative number. If it is already negative then no change will be needed. 
*/

function makeNegative(num) {
    num = Math.abs(num) * -1; //Get's the absoulte value then multiply it by 1 to insure that it will always be negative. 
    return num;
  }

