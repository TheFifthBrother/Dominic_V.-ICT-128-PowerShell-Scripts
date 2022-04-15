#Author: Dominic Vienneau
#.CREATED: Saturday, March 13
#.MODIFID: Saturday, April 4
<#
.SYNOPSIS
this imports Users from an Excel File(List.csv) in an active directory OU

.NOTE
Must be run after "(3)OU & Groups.ps1" script has been run first
#>

$Secure_String_Pwd = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force

Import-Csv .\list.csv | New-ADUser -AccountPassword $Secure_String_Pwd -ChangePasswordAtLogon $true -Enabled $true