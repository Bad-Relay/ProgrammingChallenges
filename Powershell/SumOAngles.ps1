<#
This script will display the angle of a shape given the number of sides
#>


function Get-Angle([int] $sides) {
  ($sides - 2) * 180
}


# Example Use
#Get-Angle -sides 4