#profile.ps1
#Created: Monday, April 11, 2022
#Modified: Monday, April 11, 2022
<#
.SYNOPSIS
Everytime PowerShell open this script is run
#>
#Set Home Path Directory
New-PSDrive -Name Networketeer -PSProvider FileSystem -root "C:\Users\Dominic Vienneau\Documents\WindowsPowerShell"
cd Networketeer:

Clear-Host

#Message On launch
$Date = Get-Date -Format 'F'

Write-Host "It is currently $Date"`n
Write-Host "I'm sure you're very nice, but you'd be even nicer if you'd PowerShell."`n
