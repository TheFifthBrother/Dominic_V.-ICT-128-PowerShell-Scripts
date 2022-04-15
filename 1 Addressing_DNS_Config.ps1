#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 29
#.MODIFID: Saturday, April 13
<#
.SYNOPSIS
Default Virtaul Machine Setup

.DESCRIPTION
Takes in the VM name and creates that name as well as creates the Hard Drive used with the same name

.PARAMETER Number 1
Takes in Virtual Machine Name

.EXAMPLE
Name of your Virtual Machine? : Example_PC
#>

#Prompts user for IP address
$ip = Read-Host "IP address"

#Prompts user for Subnet Prefix Lenght
$Prefix = Read-Host "Prefix Length (Exp 24 / 64)"

#Prompts user to enter Default Gateway
$dgate = Read-Host "Default Gateway"

#Prompts user to enter DNS server addresses
$dnsserv = Read-Host "DNS servers addresses (1.1.1.1,2.2.2.2,3.3.3.3,....)"

New-NetIPAddress -InterfaceAlias Ethernet -IPAddress $ip -PrefixLength $Prefix -DefaultGateway $dgate

Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses $dnsprim
