// This script checks if employed is true and vacation is false. It will return false if the conditions are met. 

fn set_alarm(employed: bool, vacation: bool) -> bool {
    if employed == true && vacation == true {
        return true
        
    }
    else {
        return false
    }
}

fn main() {
    set_alarm(true, false);
}
