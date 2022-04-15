#.CREATER: Dominic Vienneau
#.CREATED: Saturday, April 10
#.MODIFID: 
<#
.SYNOPSIS
A Function that can be used to Gets Computer info

.DESCRIPTION
Can be used on a local computer are used with PsSession or Invoke-Commands to get information on several different computers at once

.EXAMPLE
Enter-PsSession
#>

Function PCInfo {
#OS Information
Write-Host "Operating System Inforamtion" -ForegroundColor DarkRed
$Info = Get-ComputerInfo
Write-Host "   " $Info.OsName
#CPU Information
Write-Host "Processor Infomation" -ForegroundColor DarkRed
$CPU = $Info.CsProcessors
Write-Host "   " $CPU.Name
Write-Host "   " $CPU.NumberofCores "Cores" 
Write-Host "   " $CPU.NumberOfLogicalProcessors "Threads"
#Graphics Card Infomation
Write-Host "Graphics Card Information" -ForegroundColor DarkRed
$GPU = Get-WmiObject win32_VideoController
Write-Host "   " $GPU.VideoProcessor
#RAM inforamtion
Write-Host "RAM Infomation" -ForegroundColor DarkRed
Write-Host "   " ($Info.CsPhyicallyInstalledMemory * 0.000001) "GB"
#Disk information
Write-Host "Disk Infomation" -ForegroundColor DarkRed
$Disks = Get-WmiObject win32_Logicaldisk
Foreach ($Disk in $Disks) {Write-Host "   Drive Name: " $Disk.VolumeName,`n "   Drive ID" $Disk.DeviceID,`n "   Drive Total Space" ($Disk.Size * 0.000000001) "GB",`n "   Drive Free Space" ($Disk.FreeSpace * 0.000000001) "GB" } 
#Network Interface Card
Write-Host "Network Interface Card Information" -ForegroundColor DarkRed
$NICs = Get-WmiObject Win32_NetworkAdapter 
Foreach ($NIC in $NICs) {Write-Host "   Network Adapter Name: " $NIC.Name,`n "   Drive ID" $NIC.MACaddress,`n "   NIC Speed" $NIC.Speed }
}