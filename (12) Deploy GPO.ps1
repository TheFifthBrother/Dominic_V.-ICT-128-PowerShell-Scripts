#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 5
#.MODIFID: Saturday, Match 16
<#
.SYNOPSIS
Takes Exported Group Policy Object folders and imports them into the currently used Domain Controller

.DESCRIPTION
AFTER!!! Deploying Active Directory
the Group Policy Objects will be put into the inactive folder To be linked in OU manually
#>

New-GPO -Name 'No Removable Drive(RestruantStaff/HR)'
New-GPO -Name 'No Command Prompt(Staff)'
New-GPO -Name 'No Control Panel(Staff)'
New-GPO -Name 'Disable Auto Update(RauDZ)'
New-GPO -Name 'No Install(Staff)'
New-GPO -Name 'Master Password Policy(RauDZ)'
New-GPO -Name 'No Custom Desktop(Staff)'
New-GPO -Name 'Mapping Drive(RauDZ)'


Import-GPO -Backupid 3E6608EB-99C2-4CA6-B788-F40C1CE7FD60  -TargetName 'No Removable Drive(RestruantStaff/HR)' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid 73B98B84-6579-4AD2-B043-9E7421DAF3DD  -TargetName 'No Command Prompt(Staff)' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid 2231C287-C535-44E4-B0DE-A4773B30F012  -TargetName 'No Control Panel(Staff)' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid 96403CAA-6A84-4A99-AC09-1B8C3D8BFBCB  -TargetName 'Disable Auto Update(RauDZ)' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid E3475D8C-7A84-46AD-9F14-B67B14243754  -TargetName 'No Install(Staff)' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid FB816F9A-6490-4620-B8C6-B13280D9D1F1  -TargetName 'Master Password Policy(RauDZ)' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid 91355E1A-65BA-46C0-8904-A137B72E4A2B  -TargetName 'No Custom Desktop(Staff)' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid D767AF78-3C28-4C4A-BA4C-B35753769DAD  -TargetName 'Mapping Drive(RauDZ)' -Path C:\Users\Administrator\Desktop