#.CREATER: Dominic Vienneau
#.CREATED: Thursday, April 14
#.MODIFID: Thursday, April 14
<#
.SYNOPSIS
Ping all of the addresses in a range

.DESCRIPTION
Define the Ip base and then starting address to the ending address. Would be best started as a job in the background

.PARAMETER Number 1
Address Space: Example - 192.168.1.

.PARAMETER Number 2
Takes in the starting Address 192.168.1.<5>

.PARAMETER Number 3
Takes in your ending address 192.168.1.5 - 192.168.1.9

.EXAMPLE
Ping-Range 192.168.1. 5 9
This will ping IP Addresses 192.168.1.5, 192.168.1.6, 192.168.1.7, 192.168.1.8, 192.168.1.9
#>
Function Ping-Range {
    param (
        [String] $Address,
        [int]$Start,
        [int]$End
    )
    While ($Start -lt $End + 1) {
        $Ping = $Address + $Start
        Ping $Ping
        $Start++
    }
}