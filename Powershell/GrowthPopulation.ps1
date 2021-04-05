#Used for the Growth of a Population code wars challange 

[int]$p0 = 1500 #stating population 
[double]$percent = 5 # what percent it is growing 
[int]$aug = 100 # number of people moving in 
[int]$p = 5000 # The target population 
for ($i = 0 ; $p0 -lt $p ; $i++){
    $p0= $p0 + ($p0 * ( $percent * .01 )+$aug)
}
"It will take $i years to get to $p" | Write-Host 