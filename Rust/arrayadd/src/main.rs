// This is a script that adds two arrays 

fn arrayadd(arr1: &mut [u8], arr2: &mut [u8]) -> u8 { // sets a function with the peramters 2 mutable arrays 

    let sum: u8 = arr1.iter().sum(); // gets the some of array 1 
    let sum2: u8 = arr2.iter().sum(); // get the some of array 2
    let result = sum + sum2; // adds the two arrays and assign its to a result variable 
    return result;

} 

fn main() {

    
    let mut arr: [u8; 4] = [1,2,3,4]; // sets the value for array one 
    let mut arr2: [u8; 4] = [1,2,3,4]; // sets the value for array two

    println!("{}",arrayadd(&mut arr, &mut arr2)); // uses the arrayadd function to add the two arrays and prints the result
}
