function solution(str){
  var res = str.split(""); // turns the string into a list
  res.reverse(); // reverse the list
  var end = res.toString(); // turn the list back into a strings
  var last = end.replace(/,/g,""); // get rid of the comma
  return last;
}