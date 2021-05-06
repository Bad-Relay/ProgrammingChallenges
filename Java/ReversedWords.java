// This program takes a string and returns each word in reverse order. 

public class ReversedWords {   
   public static void main(String[] args) {
      System.out.println(toReverseString("Hello World")); // Call function and print it to the console.
   }

   public static String toReverseString(String str){
      String[] words = str.split(" "); // make an array of words in the string.

      String result = ""; // Empty string that will get added from the for loop

      for (int index = words.length -1; index >= 0; index--){ // Run for each word in the string.

        result += words[index] + " ";  // Starting in reverse order add word to result to string with a space at the end. 
      }


      return result.substring(0, result.length() -1); // return  string with the extra space at the end gone. 

   }
}