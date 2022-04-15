#.CREATER: Dominic Vienneau
#.CREATED: Saturday, April 10
#.MODIFID: 
<#
.SYNOPSIS
Joins a computer to a domain (Infomations is place holders and must be changed)

.DESCRIPTION
Can be used on a local computer are used with PsSession or Invoke-Commands to get information on several different computers at once
#>

Add-Computer -DomainName 'int.example.com' -OUPath "OU=Domainfolder,OU=Workstation,DC-int/ext,DC=Domain,DC=com" 