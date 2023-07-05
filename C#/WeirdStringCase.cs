// This script take odd index letters in a word and makes them uppercase and does the opposite for even index letters

using System;

public class Kata
{
  public static string ToWeirdCase(string s)
  {
        string result = "";
        bool odd = true;
        foreach (char i in s) 
    {
 
        if(i == (char)32){ //if current char = space
          result += i;
          odd = true;
          
        }
        else if (odd == true)
        {
            result += Char.ToUpper(i);
            odd = false;
        }
        else {
            result += Char.ToLower(i);
            odd = true;
        }
    
    }
       return result;
  }
}
