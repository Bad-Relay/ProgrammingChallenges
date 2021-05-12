/*

This is for the challange Street Fighter 2 - Character Selection.
This program is to simulate the menu of the Street fighter game.

The user provides inputs and the function returns what character was hovered.
You are aeble to loop around the x axis but not the y axis.

*/
import java.util.Arrays;
public class StreetFighter2 {
    public static void main(String[] args) {
        String[][] fighters = new String[][]{ //Set two array to test menu 
            new String[] { "Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega" },
            new String[] { "Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison" },
  };
      String[] moves = new String[] { "up", "left", "right", "left", "left" }; // array of moves to test
    
      int[] start = {0,0}; // Testing starting pos
      System.out.println(Arrays.toString( streetFighterSelection(fighters, start, moves))); //print to console
   }

   public static String[] streetFighterSelection(String[][] fighters, int[] position, String[] moves){
    
    String result = "";
    if(moves.length == 0){ // If the move array is empty return the array.
    return moves;
    }

    int x = 0; //starting x axis 
    int y = 0; //starting y axis

    for(String m :moves){ // For each move I test different inputs
                          // In the future I will use a case statement. I did not at the time becase I did not know you could test them
    if( m == "up" && y == 1){  //If the cursor is on the 2nd grid move it up by one    
        y = y -1;
    }
    else if (m == "down" && y == 0){ // If the cursor is on the 1st grid move it down by one.
        y++;
    } 
    else if(m == "right" && x== 5){ // if at the end of the grid loop back to the start
        x = 0;
    }
    else if(m == "left" && x == 0){ // if at the start of the gripd loop to the end 
        x = 5;
    }
    else if(m == "right"){ //move cursor right
        x++;
    }
    else if(m == "left"){ //move cursor left
        x = x -1;
    }


        result += fighters[y][x]+ ","; //add the results to the string and add an , to split into an array
    }

    return result.split(","); //return array with the character hovered. 
  }

}
