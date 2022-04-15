#Creater: Dominic Vienneau
#Created: Saturday April, 2 2022
<#
.DESCRIPTION
Creates a VHDX with a differencing disk followed by Greating a VM for that Disk
#>
#GUI that walks you through your IOS selection
$OSPick = Read-Host "What would you like?`n1 = Windows 10`n2 = Windows Server 2019`n"
If($OSPick -eq 1) { $ParentPath = 'C:\ProgramData\Microsoft\Windows\Hyper-V\Parent Disks\Windows 10 parent.vhdx'}
if($OSPick -eq 2) { $ParentPath = 'C:\ProgramData\Microsoft\Windows\Hyper-V\Parent Disks\Server 2019 parent Disk.vhdx'}  
$VMLocation = 'C:\ProgramData\Microsoft\Windows\Hyper-V\Virtual Machines'
$VSwitch = 'Private Switch'
$RAM = 4GB
$Cores = 2
$VMName = Read-Host "Name your Virtual Machine"

Set-ItemProperty -Path $ParentPath -Name IsReadOnly -Value $true

$path = 'C:\ProgramData\Microsoft\Windows\Hyper-V\Virtual Hard Drives'

#Create the Differencing Disk VHD
$VHD = New-VHD -Path ($path.FullName + "\" + $vmname + ".vhdx") -ParentPath $ParentPath -Differencing

#Create the Virtual Machine with the Differencing Disk Hard Drive
New-VM -Name $VMName -Path $VMLocation -VHDPath $VHD.Path -BootDevice VHD -Generation 2 -SwitchName $vSwitch | `
 Set-VMMemory -DynamicMemoryEnabled $true `
 -MaximumBytes $RAM -MinimumBytes 512MB -StartupBytes 1GB `

 Set-VMProcessor -VMname $VMname -Count $Cores
#Start the VM
Start-vm $VMName
#End