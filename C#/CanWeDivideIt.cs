using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// This script test if a number can be divided  by two differnt numbers 
namespace CanWeDivideIt
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(is_divide_by(-12, 2, -5));
            Console.ReadLine();
        }
        public static bool is_divide_by(int number, int a, int b)
        {

            if (number % a == 0 && number % b == 0) // Checks if a and b can divied number 
            {
                return true;
            }
            else {
                return false;
            }
        }

    }
}
