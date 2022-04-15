#Creater: Dominic Vienneau
#Created: Saturday April, 9 2022
<#
.SYNOPSIS
Interative Menu For picking Ios to put into a create DVD drive on your Virtal Machine

.DESCRIPTION
Opens a menu where you can pick from the ios on Dominic's Current system

.PARAMETER Number 1
Takes in your selection for the menu displayed

.EXAMPLE
If no $VMname was made earlier with another script it will ask you to type in a machines name that is currently in the system.
#>

if($VMname -eq $null) {$VMname = Read-Host "Name of your Virtual Machine?"}
Write-Host "`n`n====Please Select==== `n1 - Server2022 `n2 - Server 2019 `n3 - Windows 11 `n4 - Windows 10"

$Os = Read-Host "Enter Selection"
if($Os -eq 1) {$Os = "WindowsS2022.iso"}
if($Os -eq 2) {$Os = "WindowsS2019.iso"}
if($Os -eq 3) {$Os = "Windows11.iso"}
if($Os -eq 4) {$Os = "Windows10.iso"}


Add-VMDvdDrive `
-VMName $VMname `
-path "D:\Computer Tools\$Os"

$VMcores = Read-Host "Select Number of Cores used by VM"

Set-VMProcessor -VMname $VMname -Count $VMcores