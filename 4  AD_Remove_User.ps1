<# 
.CREATED BY: Dominic Vienneau
.CREATED ON: April 11, 2022

.SYNOPSIS
Removes an ADUser from a Domain

.DESCRIPTION
Takes in a name.
Gets all the ADusers
Loops through all of the users and when it finds the name entered it removes it from the list

.PARAMETER Number 1
Asks for the SamAccountName 

.EXAMPLE
You would like to remove Becky Sue.

DistinguishedName : CN=Becky Sue,OU=Staff,OU=Office,OU=Example,DC=int,DC=Example,DC=com
Enabled           : True
GivenName         : Becky
Name              : Becky Sue
ObjectClass       : user
ObjectGUID        : 42f55f14-0c5b-4cc1-941b-13de564acdba
SamAccountName    : Becky.Sue
SID               : S-1-5-21-1055934409-2406074720-3316661609-1222
Surname           : Sue
UserPrincipalName : Becky.Sue@int.Example.com

Use SamAccountName Info, Type in name of person you want to remove: <Becky.Sue>
#>

$ToRemove = Read-Host "Use SamAccountName Info, Type in name of person you want to remove:"
$Users = Get-ADUser -Filter *
ForEach ($User in $Users) {}
if ($User.SamAccountName -eq $ToRemove) { Remove-ADUser -Identity $User} 