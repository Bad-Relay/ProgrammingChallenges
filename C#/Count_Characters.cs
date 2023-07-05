// Counts each character in a string and put them in a dictionary 
using System;
using System.Collections.Generic;

public class Kata
{
  public static Dictionary<char, int> Count(string str)
  {
        Dictionary<char, int> result = new Dictionary<char, int>();

        foreach (char i in str) 
    {
            
        if (result.ContainsKey(i) == true){
            result[i] = result[i]+1;
        }
        else{
            result.Add(i,1);
        }
      
    }
      return result;
  }
}
