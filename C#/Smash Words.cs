// This program takes a Array of words and put them in one sentence

public class Kata
{
  public static string Smash(string[] words)
  {
        string result = "";
        foreach (string i in words) //Run for each word in Array
    {
        result += " "+i; //Add each word with a space
    }
       return result.Trim(); //Get rid of leading or tail spaces 
  }
}
