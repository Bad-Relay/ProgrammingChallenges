using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// This program takes a string and if the name starts with a R it will print that they play a banjo otherwise it will print they don't play a banjo

namespace Banjo
{
    class Program
    {
 
        static void Main(string[] args)
        {
            Console.WriteLine(AreYouPlayingBanjo("Martin")); //calls the banjo function and prints the results 
            Console.ReadLine();

        }
        public static string AreYouPlayingBanjo(string name)
        {
            string result = name + " does not play banjo"; //sets the default result to not playing a banjo
            string s = name.Substring(0, 1); // sets a new variable to the first letter of name because name is static 
            if (s == "r" || s ==  "R") { // If statment that looks for both r and R 
                result = name + " plays banjo"; // resets the variable if the name starts with an r
                return result;
            }
            return result;
        }
        }
    }
