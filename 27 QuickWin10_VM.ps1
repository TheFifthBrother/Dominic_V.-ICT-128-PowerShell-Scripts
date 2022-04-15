#NAME: Build-VM.ps1
#AUTHER: ME
#Date Created: April 02 2022
#Date Modified:
<#
.SYNOPSIS
This builds a VM in Hyper-V folder
#>

#Varibales
$VMname = Read-Host "Name your VM?"
[int64]$VMmem = Read-Host 'How much RAM?'
[int64]$VMcores = Read-Host "How many Cores?"
$mem = $VMmem * 1GB
#Set RAM amount
New-VM -Name $VMname -MemoryStartupBytes $mem -BootDevice VHD -NewVHDPath "C:\ProgramData\Microsoft\Windows\Hyper-V\Virtual Hard Drives\$VMname.vhdx" -NewVHDSizeBytes 60GB -Path "C:\ProgramData\Microsoft\Windows\Hyper-V" -Generation 2
#Adds a DVD drive to the computer inserting windows 10 iso into it
Add-VMDvdDrive -VMName $VMname -path "D:\Computer Tools\Windows10.iso"
#Sets the number of Cores avalible to the VM
Set-VMProcessor -VMname $VMname -Count $VMcores