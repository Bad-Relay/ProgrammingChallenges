/*

This is for the CamelCase Method challange for code wars.

THis will take a string remove all the spaces then capitalize each word. 

*/
public class CamelCase {
    public static void main(String[] args) {
        System.out.println(camelCase(""));
     }

        public static String camelCase(String str) {
        String[] words = str.split(" "); // Take the inputed string and make it into a array

        String result = "";

        for (String w : words) { // for each element in that array
            if( w.length() > 0){ //IF the string is not empty (in the case of double spaces)
            result += w.substring(0,1).toUpperCase()+ w.substring(1); // Capitalize the first word
            }
        }
        
        return result;

    }
}
