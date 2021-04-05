using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// takek a non negitve interger and makes the largest number possible

namespace Descending_Order
{
    class Program
    {

        public static int DescendingOrder(int num) 
        {
            List<int> sorted = new List<int>(); //empty list
            int result = 0; // end result 
            while (num > 0) // spearte each digit and add them to a list 
            {
                var digit = num % 10;
                num /= 10;
                sorted.Add(digit);
            }
            sorted.Sort(); // sort the list by smallest to largest 
            sorted.Reverse(); // Reverse that to get largest to smallest
            foreach (int entry in sorted) //make the list one int
                {
                result = 10 * result + entry; 
                }
            return result;
        }
        static void Main(string[] args)
        {
            Console.WriteLine(DescendingOrder(124312));
            Console.ReadLine();
        }
    }
}
