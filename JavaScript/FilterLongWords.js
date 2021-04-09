/*
This code is for task "Filter Long Words" from code wars 

The function will take a string and the length of the word you want to filter.
It will then return the words that are longer the length given (n)


*/
function filterLongWords(sentence, n) {
    var spl = sentence.split(" "); // Turn the string into a Array with each element being a word in the sentence
    var result = []; // creats a empty array for the result to return to the user


    spl.forEach(function(item, index, array) { // will run in each element in the array (words in sentence)
       if (item.length > n){ //if the word is longer than the value given by the user
       result.push(item); // add it to the result
       }
    })

  return result; // Affter the filter has run return the words that are left
          
 }
