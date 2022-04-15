#Creater: Dominic Vienneau
#Created: Saturday April, 9 2022
#DESCRIPTION: Creates a VHDX with a differencing disk followed by Greating a VM for that Disk

$OSPick = Read-Host "What would you like?`n1 = Windows 10`n2 = Windows Server 2019`n"
If($OSPick -eq 2) { $ParentPath = 'S:\Parent VHD\Server 2019\Server 2019 parent Disk.vhdx'}
if($OSPick -eq 1) { $ParentPath = 'S:\Parent VHD\Windows 10\Windows 10 parent.vhdx'}  
$VMLocation = 'S:\Scratch'
$VSwitch = 'External Switch'
$RAM = 4GB
$Cores = 2
$VMName = Read-Host "Name your Virtual Machine"

Set-ItemProperty -Path $ParentPath -Name IsReadOnly -Value $true

$path = 'S:\Scratch'

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