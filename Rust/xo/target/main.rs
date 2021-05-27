
// This is for the "Exes and Ohs" challange for codes wars
// This will take a string and return true if the same number x and o and false if the number is
// not the same 
fn main() {
    
    println!("rust hello");
   
    xo("oooooox");
}

fn xo(string: &'static str) -> bool{
    
    //string.chars().count() 
    let low = string.to_lowercase();
    let x = low.matches("x").count();
    let o = low.matches("o").count();
    
    if x == o{
        true
    }
    else{

    false
    }
}
