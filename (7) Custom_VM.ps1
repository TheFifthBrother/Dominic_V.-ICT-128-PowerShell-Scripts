#.CREATED BY: Dominic Vienneau
#.CREATED ON: April 06, 2022
#.MODIFID ON: April 13, 2022
<#
.SYNOPSIS
Default Virtaul Machine Setup

.DESCRIPTION
Takes in the VM name and creates that name as well as creates the Hard Drive used with the same name

.PARAMETER Number 1
Takes in Virtual Machine Name

.EXAMPLE
Name of your Virtual Machine? : Example_PC
#>


$VMname = Read-Host "Name of your Virtual Machine?"

New-VM -Name $VMname `
    -MemoryStartupBytes 4GB `
    -BootDevice VHD `
    -NewVHDPath "C:\ProgramData\Microsoft\Windows\Hyper-V\Virtual Hard Drives\$VMname.vhdx" `
    -NewVHDSizeBytes 60GB `
    -Path "C:\ProgramData\Microsoft\Windows\Hyper-V\Virtual Machines" `
    -Generation 2