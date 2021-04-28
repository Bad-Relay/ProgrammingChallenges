/*
This code is for task "RBG to Hex " from code wars 

The function will take 3 ints and return a string with the color hex of thoes values  
The valid range is 0 to 255.
If the values are out of range it will return the closest hex value. 
*/

function rgb(r, g, b){
    if (r > 255){    // If the value is to large change it to the maximum. 
          r = 255;
    }
    if (g > 255){   // In the future I can make this a function instead of mutiple if statements
          g = 255;
    }
    if (b > 255){
          b = 255;
    }
    if (r < 0){    // If the value is to small change it to the minimum.
          r = 0;
    }
    if (g < 0){
          g = 0;
    }
    if (b < 0){
          b = 0;
    }
    var redhex = r.toString(16); // Change the int value to hex (base 16)
    var greenhex = g.toString(16);
    var bluehex = b.toString(16);

    if (redhex.length < 2){ // make the format 01 instead of 1 so that it matches the rgb hex format 
       redhex =  "0"+ redhex;
    }
    if (greenhex.length < 2){
       greenhex = "0" + greenhex;
    }
    if (bluehex.length < 2){
       bluehex = "0" + bluehex;
    }

    var result = redhex + greenhex + bluehex; // Add all the colors to a single string 
    return result.toUpperCase(); //Change it all to upercase to match the rbg format 
 }