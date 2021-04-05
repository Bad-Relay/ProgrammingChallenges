// This prgram takes a sentence and capitalize each word in a sentence. 

public class UpperCase {   
   public static void main(String[] args) {

      System.out.println(toUpperCaseSentence("test string needs to be uppercased on each"));
   }

   public static String toUpperCaseSentence(String phrase) {
    String result = ""; // empty string that will have chars added to in the for loop
    if (null == phrase || phrase.isEmpty()){
        return null;
    }
    for (int i =0; i < phrase.length(); i++) { // a for loop that runs at the length of the sentence
        if (i == 0){
            result += phrase.substring(i,i+1).toUpperCase(); // uses the upper case method to capitalize the first letter in the sentence
        }
        else if (Character.isWhitespace(phrase.charAt(i-1))){ // checks if the last character was a space
            result += phrase.substring(i, i+1).toUpperCase();
        }
        else {
            result += phrase.charAt(i); // if not the first word add the character to the result string
        }
    }
    
    return result;
}

}
