import java.util.*;

// This program is for the Alphabet Symmetry challange 
// The input is an array with words
// The program will then check to see if it's positon in the word matches it's place in the word.
// Example in the word "arc" it will count "a" because it is both the first letter in the alphabet and first letter in the word.
// It will not match "r" in "arc" because r is not the second letter in the alphabet.

public class AlphabetSymmetry {
    public static void main(String[] args) {
        String[] in = {"abode","ABc","XyzD"}; // Used to test an array string
        System.out.println(Arrays.toString(solve(in))); // Print out result as a string to the console.
     }

    public static int[] solve(String[] arr){
            List<Integer> result = new ArrayList<Integer>(); // Make a list since the words are different lengths. 
            String alphabet = "abcdefghijklmnopqrstuvwxyz"; // a alphabet string to test location 


            for (String s : arr){ // run each word in the array
             char [] letters = s.toLowerCase().toCharArray(); // Make it all lower case to work with uppercase letters and make each letter a element in an array.
             int index = 0; // an index variable that get reset for each word.
             int symmetry = 0; // How many letter in a word match symmetry and resets for each word. 
             for(char l : letters){ // run for each letter in a word. 
                if (alphabet.indexOf(l) == index){ // if the letter has alphabet sysmetry
                symmetry = symmetry + 1; // count it
                } 
                index = index + 1;
            
            }
                result.add(symmetry); //At the end of a word add how many had alpabet sysmetry 

            }

            int[] resultArray = result.stream().mapToInt(i->i).toArray(); // convert the list into an array.

            return resultArray;
    }


}
