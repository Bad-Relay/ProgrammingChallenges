
#This script will see if the base variable is a factor of the factor variable 

[int] $base = 10
[int] $factor = 2



if (($base % $factor) -eq 0){

Write-Host "True"

}
else{

Write-Host "Falsle"
}
