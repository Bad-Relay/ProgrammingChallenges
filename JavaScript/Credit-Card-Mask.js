/*

This is a script for Credit Card Mask challange at code wars.
It will takek a string and replace it with # expect for the last for characters.

*/


function maskify(cc) {

    if (cc.length <= 4) { // if the string is less then 4 characters return the string.
  
      return cc;
    }
  const regex = /.(?=.{4})/g; // A regex fro all but the last 4 characters.
  
  const result = cc.replace(regex, "#"); // Replace them with a #
  
  return result;
  
  }