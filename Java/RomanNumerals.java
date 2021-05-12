/*
This is for the Roman Numerals Helper challange from code wars.

This program has two functions avaible to it. 
The first one called toRoman will take an interger and turn it into a Roman Numeral. 
The second one called fromRoman will take a string of a Roman Numeral and turn it into a a number.
*/
import java.util.Hashtable;
public class RomanNumerals {
    
    public static void main(String[] args) {
        System.out.println(fromRoman("XLV"));
     }
    
    public static String toRoman(int n){

        String result = "";

        int[] num = {    1000, 900, 500, 400, 100,  90,   50,  40,   10,   9,   5,    4,    1}; // Two arrays that will cycle though the number 
        String[] roman = {"M", "CM", "D","CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"}; // I did not use a hash map because at the time I did not know how to cycle though them.
                                                                                                
        int index = 0; // Number that is used to traverse the array

        while (n > 0){ // While there is still number to change into roman numeral (starting from the highst)

            if (n >= num[index]){ // If the number is biger then the inputted number 
                n = n - num[index]; // Take away the roman numeral value 
                result += roman[index]; // Add that value to the array
            }
            else{
                index++; // move to the next element int the array
            }

        }

          return result;
    }

    public static int fromRoman(String romanNumeral){
        Hashtable<String, Integer> roman = new Hashtable<>(); //Made a hash map to search though with the values of roman numerals
        roman.put("I", 1);
        roman.put("IV", 4);
        roman.put("V", 5);
        roman.put("IX", 9);
        roman.put("X", 10);
        roman.put("XL", 40);
        roman.put("L", 50);
        roman.put("XC", 90);
        roman.put("C", 100);
        roman.put("CD", 400);
        roman.put("D", 500);
        roman.put("CM", 900);
        roman.put("M", 1000);


        int result = 0; 
        
        String[] romanL = {"CM","CD","XC","XL","IX","IV"}; // Array of roman numerals that have two values 


        // This will search the array above and filter out the two value roman numerals
        for(int i =0; i < 6 ; i++){

         if (romanNumeral.contains(romanL[i])){ // if the string has one of the romanL values
            result += roman.get(romanL[i]); // add the number value to result 
           romanNumeral =  romanNumeral.replace(romanL[i], ""); // remove it from the string

         }
        }
       
       if (romanNumeral.length() > 0){ // if the string is not empty (in case of all the numerals being two values) 
       String[] letters = romanNumeral.split(""); // Split the one value numerals into an array 
       for(String l : letters){
          result += roman.get(l); // using the hash map add the number to the result 
       } 
      }
       return result;

   }


}
