// This program is for Fix String Case from codewars 
// It will cange the case of a string depending on the case of the string.
// If more lower case cange all to upper case
// If more upper case then change all to upper case.
// If same then all lower case

public class FixStringCase {
 
    public static void main(String[] args) {
      System.out.println(solve("WsNbCrU"));
   }

   public static String solve(final String str){

    char[] letter = str.toCharArray(); // make the string into a array.
    int lower = 0; // have a counter for numbers of lower case letters.
    double len = str.length()/2.0; // gets half of the length of the string
    for (char l : letter){
        if(l >= 'a' && l <= 'z'){
            lower++; // If it finds a lower case then add it to the counter var.
        }
    }

    if (lower > len){ // If there are more lowercase then half of the string 
        return str.toLowerCase(); // All lowercase
    }
    else if(lower < len) { // If less then half the string
        return str.toUpperCase(); //All uppercase
    }
    else{ // If same
        return str.toLowerCase();
    }

   }

}
