// This is for the "find the middle element" challange in code wars
// This code take an array of 3 numbers and returns the index of the 2nd largest nummber 



fn gimme(input_array: [i32;3]) -> usize {
    
    let mut sort_array: [i32; 3] = input_array; // Make a mut version of the input in the future I can use the method .clone() 
    sort_array.sort(); // sort the new array

    let mid = sort_array[1]; // Get the middle of the 3 sorted values 
        
    input_array.iter().position(|&x| x == mid).unwrap() // search for the middle number in the orginal array and then return the index once found 

}




fn main() {
    
    let arr: [i32; 3]= [1,3,2]; // input array
    println!("{}", gimme(arr)); // print the result to consol  
}
