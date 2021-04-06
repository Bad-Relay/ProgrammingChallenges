
<#
This script takes a input of address and returns the other side of the road. 

Left is odd numbers that go up
Right is even numbers that go down

Example of a road with a length of 3

1|   |6
3|   |4
5|   |2

#>

function Over-Road($address, $length) {

return ($length *2) - ($address-1) #gets the starting number of the right side then subtracts it by the left side

}

# Example use:
# Over-Road -address 1 -length 3