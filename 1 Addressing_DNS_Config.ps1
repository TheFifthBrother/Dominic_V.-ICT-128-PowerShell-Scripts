#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 29
#.MODIFID: Saturday, April 13
<#
.SYNOPSIS
Wizard for Static IP Address setup on a computer

.DESCRIPTION
Takes in the VM name and prompts you for IP configuration

.PARAMETER Number 1
Takes in Computer Name

.PARAMETER Number 2
Static IP address for computer

.PARAMETER Number 3
Prefix for IP address

.PARAMETER Number 4
Default Gateway

.PARAMETER Number 5
List of Domain Controllers 

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
