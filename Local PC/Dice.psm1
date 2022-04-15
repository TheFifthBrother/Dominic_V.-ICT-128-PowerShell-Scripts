#.CREATER: Dominic Vienneau
#.CREATED: Saturday, April 2, 2022 11:02 AM
#.MODIFID: Saturday, April 13, 2022 12:05 PM
<#
.SYNOPSIS
Allows you to roll common different sided dice

.DESCRIPTION
You choose the sided dice you want to use and then you choose how many of those dice that you want to roll

.PARAMETER Number 1
Choose how many of that type of dice you would like to roll

.PARAMETER Number 2
The amount you would like to add to the total of all the diced rolled

.EXAMPLE
PS Home:\> D6


Rolls: 4
Modifier: 0

Total: 4
------------------------------
PS Home:\> D6 4


Rolls: 1 4 2 2
Modifier: 0

Total: 9
------------------------------
PS Home:\> D6 4 2


Rolls: 1 4 2 2
Modifier: 2

Total: 11
#>

Function coin {
$coin = Get-Random -Minimum 1 -Maximum 3
if ($coin -eq 1) {echo "Heads"}
if ($coin -eq 2) {echo "Tails"}
}
Function D4 {
    param(
    [int]$tries = 1,
    [int]$Mod = 0
    )
    $rolls = @()
    for($start = 0; $start -lt $tries; $start++){ 
    $rolls += Get-Random -Minimum 1 -Maximum 5 
    }
    ForEach($roll in $rolls) { 
    $tot += $roll 
    }
    $tot += $Mod
    write-host "`nRolls: $rolls"
    write-host "Modifier: $Mod`n"
    Write-Host "Total: $tot`n"
}
Function D6 {
    param(
    [int]$tries = 1,
    [int]$Mod = 0
    )
    $rolls = @()
    for($start = 0; $start -lt $tries; $start++){ 
    $rolls += Get-Random -Minimum 1 -Maximum 7 
    }
    ForEach($roll in $rolls) { 
    $tot += $roll 
    }
    $tot += $Mod
    write-host "`nRolls: $rolls"
    write-host "Modifier: $Mod`n"
    Write-Host "Total: $tot`n"
}
Function D8 {
    param(
    [int]$tries = 1,
    [int]$Mod = 0
    )
    $rolls = @()
    for($start = 0; $start -lt $tries; $start++){ 
    $rolls += Get-Random -Minimum 1 -Maximum 9 
    }
    ForEach($roll in $rolls) { 
    $tot += $roll 
    }
    $tot += $Mod
    write-host "`nRolls: $rolls"
    write-host "Modifier: $Mod`n"
    Write-Host "Total: $tot`n"
}
Function D6 {
    param(
    [int]$tries = 1,
    [int]$Mod = 0
    )
    $rolls = @()
    for($start = 0; $start -lt $tries; $start++){ 
    $rolls += Get-Random -Minimum 1 -Maximum 7 
    }
    ForEach($roll in $rolls) { 
    $tot += $roll 
    }
    $tot += $Mod
    write-host "`nRolls: $rolls"
    write-host "Modifier: $Mod`n"
    Write-Host "Total: $tot`n"
}
Function D12 {
    param(
    [int]$tries = 1,
    [int]$Mod = 0
    )
    $rolls = @()
    for($start = 0; $start -lt $tries; $start++){ 
    $rolls += Get-Random -Minimum 1 -Maximum 13 
    }
    ForEach($roll in $rolls) { 
    $tot += $roll 
    }
    $tot += $Mod
    write-host "`nRolls: $rolls"
    write-host "Modifier: $Mod`n"
    Write-Host "Total: $tot`n"
}
Function D20 {
    param(
    [int]$tries = 1,
    [int]$Mod = 0
    )
    $rolls = @()
    for($start = 0; $start -lt $tries; $start++){ 
    $rolls += Get-Random -Minimum 1 -Maximum 21 
    }
    ForEach($roll in $rolls) { 
    $tot += $roll 
    }
    $tot += $Mod
    write-host "`nRolls: $rolls"
    write-host "Modifier: $Mod`n"
    Write-Host "Total: $tot`n"
}
Function D100 {
    param(
    [int]$tries = 1,
    [int]$Mod = 0
    )
    $rolls = @()
    for($start = 0; $start -lt $tries; $start++){ 
    $rolls += Get-Random -Minimum 1 -Maximum 101 
    }
    ForEach($roll in $rolls) { 
    $tot += $roll 
    }
    $tot += $Mod
    write-host "`nRolls: $rolls"
    write-host "Modifier: $Mod`n"
    Write-Host "Total: $tot`n"
}