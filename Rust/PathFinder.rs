
// For the "Path Finder #1" challange on code wars 
// This program will take a string as a maze 
// It will then return true if from the top left you can make a path to the bottom right
// Ussed the floodfill algorithm to find all possilbe path and see if it ends in the bottom right.
// "." is a empty space and "W" is a wall
// "F" means it possible to get there from the start 

fn floodfill(matrix: &mut Vec<Vec<char>>, x: usize, y: usize)-> &mut Vec<Vec<char>>{


    

    let w_char : Vec<char> = "F".chars().collect(); // F is a discovered area

    if matrix[x][y].to_string() == "."{ // if space is not a wall
        
        matrix[x][y] = w_char[0]; // Change current location to F since it posssible to get there from start

        if x > 0{ 
            floodfill(matrix,x-1,y); // If you can move right go right
        }
        if x < matrix[y].len()-1{
            floodfill(matrix,x+1,y); // If you can move left go left
        }
        if y > 0{
            floodfill(matrix,x,y-1); // If you can go up go up
        }
        if  y < matrix.len()-1{
            floodfill(matrix,x,y+1); // If you can go down go down
        }
    
        }

   

    //println!("{:?}", matrix[x][y]);
    //println!("{:?}", matrix);

    matrix //Return the matrix with the Fs for path
}


fn pathfinder(maze: &str) -> bool {


    let maze_vec : Vec<_> = maze.lines().collect();
    
    let last = maze_vec.last().unwrap();
    let maze_len = last.len(); //Get the length of the maze

    //let dest = last.chars().nth(maze_len-2).unwrap(); // the Destination 

    let mut maze_group : Vec<_> = Vec::new(); // Empty list for array in array

    for m in maze_vec { // Each row 


        let chars: Vec<char> = m.chars().collect();
        maze_group.push(chars); //add an array with each "." and "W" as sperate elements

    }

    //if dest.to_string() == "W" {
    //println!("Destnation is {}", dest);
    //return false;
    //}

    //println!("Matrix form \n{:?}", maze_group);




    let maze_search = floodfill(&mut maze_group,0,0); // End result with "F"s with current path


    //println!("{}", maze_search[2][2]);


    if maze_search[maze_len-1][maze_len-1].to_string() == "F"{ // If end of maze has an F so it's possible to get there return true
    true
    }
    else{
    false
    }




}


fn main() {
   let m =  "\
            .W.\n\
            .W.\n\
            ...\
            "; //Sample maze where you have to go down 2 and the right 2 to get to then end (3,3)
           

    //println!("Maze is \n{}", m);
    println!("Answer is {}", pathfinder(m)); // print if it is possible
}
