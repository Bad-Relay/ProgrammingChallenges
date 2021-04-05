// This Code removes the vowels in a string 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remove_Vowels
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Disemvowel("New"));
            Console.Read();
        }
        public static string Disemvowel(string str)
        {
            string end = "";
            foreach (char x in str)
            {
                if (x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u' || x == 'A' || x == 'E' || x == 'I' || x == 'O' || x == 'U') // Checks if character is a vowels
                { 
                }
                else {
                    end += x;
                }
            }
            return end;
        }
    }
}
