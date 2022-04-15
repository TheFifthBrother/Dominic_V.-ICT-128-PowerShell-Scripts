#.CREATER: Dominic Vienneau
#.CREATED: Saturday, April 10
#.MODIFID
<#
.SYNOPSIS
Gets Computer info of a Virtual Machine

.DESCRIPTION
Invokes-Command into Virtual Machine to get the infomation out of them

.PARAMETER Number 1
Takes in Virtual Machine Name

.EXAMPLE
Virtual Machines Names you want info from? : Example_PC
#>

$Pcs = Read-Host Virtual Machines Names you want info from?
$info = Read-Host Infomation you would like to get?

Invoke-Command -VMName $PCs -ScriptBlock {
Get-ComputerInfo -Property $info
}