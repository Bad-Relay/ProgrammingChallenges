// This is for the ATM challange in code wars 
// This will take a money amount and see how many 500,200,100,50,20 or 10 bill it will take to get that amount.
public class ATM {

    public static void main(String[] args) {
        System.out.println(solve(220)); 
     }

     public static int solve(int n){

        int[] bills= {500,200,100,50,20,10}; //An array of bills that the ATM has

        if( (n%10) != 0 ){ // If the result is impossible return -1
            return -1;
        }

        int index = 0; // An index to cycle on the array

        int result = 0; // An result to add to 

        while(n > 0){
            if (n >= bills[index]){
                n = (n - bills[index]); //Subtract the current bill from the total 
                result++; // Add the bill count by one
            }
            else{
                index++; // move next value in the array
            }

        }
        return result;
     }


}
