<# 
.CREATED BY: Dominic Vienneau
.CREATED ON: April 11, 2022

.SYNOPSIS
Save Active Directory Domain Info to a CSV File

.DESCRIPTION
Getting AD Domain Saves it as a CSV file and then Print it out the the screen to view it.
It name it as it DNSRoot info. int.Example.com
Save it in your current directory

.EXAMPLE
Virtual Machines Names you want info from? : Example_PC

#>

$Domain = Get-ADDomain
$FileName = $Domain.DNSRoot
$Domain | Export-CSV "$FileName.Csv"
$Domain
