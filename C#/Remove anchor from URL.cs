using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// This script removes the # and the character affter it
namespace Remove_anchor_from_URL
{
    class Program
    {
        public static string RemoveUrlAnchor(string url)
        {
            char anchor = '#'; 
            if (url.Contains(anchor)) // if the url has the anchor then run
            {
                int idx = url.IndexOf(anchor); // get the postion of the anchor 
                return url.Remove(idx); // remove everything affter it
            }
            else {
                return url; // if no anchor return normal
            }
        }
        static void Main(string[] args)
        {
            System.Console.WriteLine(RemoveUrlAnchor("www.codewars.com#about"));
            Console.ReadLine();
        }
    }
}
