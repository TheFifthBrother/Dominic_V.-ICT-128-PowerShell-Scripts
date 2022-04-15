#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 15
#.MODIFID: Saturday, April 03
<#
.SYNOPSIS
Creates DHCP Scope for both kelowna and calgary Sites on int.raudz.ca

.DESCRIPTION
Only useful for one build that was used for the Raudz case study. Only run the full script if you have all 4 Domain controllers connected on
the network. If you would like you can run both scritps seprately to get the DCHP scope setup on each site seperately.

.EXAMPLE
Will create a Scope with in the Server tools in the DHCP menu. 
#>

Add-DhcpServerv4Scope -ComputerName DC01-Kel -Name Raudz-Kel -StartRange 10.10.1.100 -EndRange 10.10.1.200 -SubnetMask 255.255.255.0
Add-DhcpServerv4Failover -ComputerName DC01-Kel -Name Raudz-Kel -PartnerServer DC02-Kel

Add-DhcpServerv4Scope -ComputerName DC03-Kel -Name Raudz-Cal -StartRange 10.10.2.100 -EndRange 10.10.2.200 -SubnetMask 255.255.255.0
Add-DhcpServerv4Failover -ComputerName DC03-Kel -Name Raudz-Cal -PartnerServer DC04-Kel