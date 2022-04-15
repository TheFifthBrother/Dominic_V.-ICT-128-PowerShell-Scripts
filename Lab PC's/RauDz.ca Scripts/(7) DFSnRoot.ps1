#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 30
#.MODIFID: Saturday, April 11
<#
.SYNOPSIS
Configures folders, shares and DFSNamesspace at the same time

.DESCRIPTION
Creates a folder, turnes that folder into a shared folder over the domain. Creates a new namespace on to the
Main Domain controller allowing other secondary domain controllers to be able to connect to that shared folder.
#>
#New-Item -item Type Directory
mkdir 'E:\shared'

New-SmbShare `
    -Name 'Files' `
    -Path 'E:\shared' `
    -ChangeAccess 'Domain Users' `
    -FullAccess "Domain Admins"

New-DfsnRoot `
    -TargetPath "\\DC01\Files" `
    -Type DomainV2 `
    -Path "\\int.raudz.ca\Files" `
    -GrantAdminAccounts "Domain Admins" `
    -EnableRootScalability $True `
    -EnableInsiteReferrals $True  `
    -EnableTargetFailback $True 