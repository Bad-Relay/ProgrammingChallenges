<#
For the Ball Upwards challange on Code wars

Takes the inital speed of a ball and returns time in tenth of a secound it will reach it's height 

#>
function Get-Maxball($v0) {
    $v0 = $v0/3.6 # Initial speed converted into m/s
    
    $g = 9.81 # Earth's Gravity in m/s
    $he = 1 # default var for height difference
    for ($i = 1; $he -gt 0 ; $i++){ #Will run as long as the height difference is postive. 
    $t = $i/10 # Present time
    $t2 = ($i-1)/10 #last result

    $he = ($v0*$t -0.5*$g*$t*$t) - ($v0*$t2 -0.5*$g*$t2*$t2) #Gets the difference between the ball height now and ball height 1/10 sec ago
    }

    $i -2 # returns reslut 

}
# Example use
# Enter input as km per hour
#Get-Maxball -v0 25