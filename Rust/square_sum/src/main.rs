

fn square_sum(vec: Vec<i32>) -> i32 {
    let mut a : Vec<i32> = Vec::new();
    
    for x in 0..vec.len() {
        a.push((vec[x] * vec[x]) as i32);
    }
    let sum1: i32 = a.iter().sum();
    return sum1
    
}

fn main() {
    println!("{}", square_sum(vec![1,2]));
}
