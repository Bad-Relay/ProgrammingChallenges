/*
This code is for task "Magic The Gathering #1: Creatures" from code wars 

It is based off the magic the gathering card game. 
It takes a two array of each players moster
If the health of one monster is lower or equal to the other player's attack then it will be removed form the list

*/
function battle(player1, player2) {
    
p1_atk = player1.map(x =>x[0]); // Set the attack of player one in a single element arrray 
p2_atk = player2.map(x =>x[0]); // Set the attack of player 2


const end_player1 = player1.filter((p1,p2) => !(p1[1] <= p2_atk[p2])); // It fillter the mosters that survive player 2 attack s
const end_player2 = player2.filter((p1,p2) => !(p1[1] <= p1_atk[p2])); // It fillter the mosters that survive player 1 attacks 
  
var result = {'player1':end_player1, 'player2':end_player2}; // make the result of a object with player 1 and player 2 remaining monsters
  
return  result;
  }