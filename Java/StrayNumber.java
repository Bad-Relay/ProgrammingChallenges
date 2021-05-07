import java.util.Arrays;
import java.util.*;
import java.util.Set;

// This script will take an array and return the number that is unique number
public class StrayNumber {   
   public static void main(String[] args) {
      System.out.println(stray(new int[]{1,1,3,1,1})); // gives a list and return the the unique number 3
   }
   static int stray(int [] numbers) {

    for (int i = 0; i < numbers.length -1 ; i++) {
       if (numbers[i] != numbers[i+1] && i != 0){ // if the current number is not the first and is not the same as the next one return the number affter
            return numbers[i+1];    
        }
        else if (numbers[i] != numbers[i+1]){ // if it's the first number return the current number
            return  numbers[i];
        }
    }


    return 0;
   }
}