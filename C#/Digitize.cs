using System;
using System.Collections.Generic;

// This is for the Digitize challange for code wars
// The program will take an int and return each digit as an array 

namespace Digitize
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(string.Join("\n", digitize(1117))); // This will print each element of the string and take the intput of the digitize function 
            Console.ReadLine();

        }

        public static int[] digitize(int n)
        {
            if (n == 0) {
                return new int[] {0}; // If the number is zero it will retun a array with a zero
            }

            List<int> resultList = new List<int>(); // Since the numbers are differnt lengths we will start with an empty list 
            while (n > 0) // while there are still digits to add 
            {
                int digit = n % 10;
                resultList.Add(digit); // add the digit to the list 
                n /= 10;
            }
            resultList.Reverse(); // The results where backwards so I used the reverse method to fix that 
            int[] result = resultList.ToArray(); // change that list to an array 
            return result; 
        }


    }
}
