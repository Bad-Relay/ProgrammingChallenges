// This program is for the Decode the Morse code on codewars
// This will take a string of morse code and decode the string to letters

public class MorseCodeDecoder {
    public static String decode(String morseCode) {
    
        String start = morseCode.replace("  ", " "); // remove the extra space for a new word.
        
        String[] word = start.split(" "); // Make an array of letters in morse code
        
        String result = "";
        
        for (String w : word){
          if(w.trim().length() == 0){ // If the current letter is a space
           result += " "; // Add a space to the output 
          }
          else{
          result += (MorseCode.get(w)); // Use the morse code library to decode the current letter.
          }
        }
      return result;
      
      }
}
