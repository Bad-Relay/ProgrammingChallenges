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
            List<int> sorted = new List<int>();
            // Bust a move right here
            int result = 0;
            while (num > 0)
            {
                var digit = num % 10;
                num /= 10;
                sorted.Add(digit);
            }
            sorted.Sort();
            sorted.Reverse();
            foreach (int entry in sorted)
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
