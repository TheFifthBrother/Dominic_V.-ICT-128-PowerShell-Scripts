#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 4
#.MODIFID: Saturday, March 12
<#
.SYNOPSIS
Deploy Active Directory for int.raudz.ca configuration

.DESCRIPTION
Auto inputs all that is needed to deploy a Primary Domain controller for OC Raudz case study lab

#>

Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "int.raudz.ca" `
-DomainNetbiosName "RauDZ" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true