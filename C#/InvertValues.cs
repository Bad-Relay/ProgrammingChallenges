using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// A program that makes negtive numnbers postive and vice versa
namespace InvertValues
{
    class Program
    {
        static void Main(string[] args)
        {
            System.Console.WriteLine(InvertValues(new int[] { 0, -1, 2 }));
            Console.ReadLine();

        }
        public static int[] InvertValues(int[] input)
        {
            int i = 0; // repersents the current element postion in the list
            foreach (int x in input) {
                input[i] = input[i] * -1; // Takes the current elment and times it by -1 to make postive/negtive 
                i++;
            }
            return input;
        }
    }
}
