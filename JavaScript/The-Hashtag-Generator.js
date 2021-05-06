/*
This is a script for the Hashtag Generator challenge from code wars. 

Takes a string and generates a hash tag. 
It will add a # to the start of the string. 
Then capitalizes each word int he sentence.
Then remove all the spaces.
IF empty or more then 140 characters then return false. 
*/

function generateHashtags(str) {
    result = str.replace(/(^\w{1})|(\s+\w{1})/g, letter => letter.toUpperCase()); // Use regex to capitalize each word in the string.
    resultNoSpace = result.replace(/\s/g, ''); // remove the spaces in the string.
     if(resultNoSpace.length < 140 && resultNoSpace.length > 0){ // if the string is not empty or more then 140 characters return the hash tag.
       return "#" + resultNoSpace;
     }
     else {
       return false; // if the string is invaild return false. 
     }
   }