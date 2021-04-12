/*
This code is for task "List Filtering" from code wars 

It will take a list and return only the int in that list

This one is an improvement over "Filter long words" due to the use of the filter method 
*/

function filter_list(l) {
    return l.filter( t  => Number.isInteger(t) == true); // T is current element in the listFiltering 
                                                        // Then it uses a pre built function to test if it is a int and if True it will keep it in the list.  
 }