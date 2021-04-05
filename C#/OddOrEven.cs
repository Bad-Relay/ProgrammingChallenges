using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// Program that gets the sum of an array and test to see if it's odd or even

namespace Odd_or_Even
{
    class Program
    {
        static void Main(string[] args)
        {
            System.Console.WriteLine(OddOrEven(new int[] { 0, -1, 2 }));
            Console.ReadLine();
        }
        public static string OddOrEven(int[] array)
        {
            if (array.Sum() % 2 != 0) // Uses sum function of the array and if the remainder  is not 0 return odd 
            {
                return "odd";
            }
            else {
                return "even";
            }
             
        }
    }
}
