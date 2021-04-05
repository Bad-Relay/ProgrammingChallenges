using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// This program will make an array based on the min, max and step.
namespace Range_of_Integers
{
    class Program
    {
        public static int[] GenerateRange(int min, int max, int step)
        {

            List<int> range = new List<int>(); //empty array 
            for (int i = min; i <= max; i= step + i) // uses the min,max and step var 
            {
                Console.WriteLine(i);
                range.Add(i); // adds to the empty array each time the for loop runs
            }
            
            return range.ToArray();
        }
        static void Main(string[] args)
        {
            System.Console.WriteLine("Hello worldo");
            GenerateRange(2, 10, 2);
            Console.ReadLine();
        }
    }
}
