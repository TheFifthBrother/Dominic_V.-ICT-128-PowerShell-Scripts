<#
CREATER: Dominic Vienneau
CREATED: Saturday, April 7, 2022 15:45 AM
MODIFID: Saturday, April 7, 2022 15:45 PM

.SYNOPSIS
Allows you to switch your NordVPN connections

.DESCRIPTION
Opens a GUI that you can use to disconnect from current VPN connection or/and Connect to a new VPN location
This would also Allow you to open the program even when it is not currently running

.PARAMETER # 1
VPN Connections based off of numbers 1 - 4, 0 is disconnect

.EXAMPLE
0. Disconnect
1. United States
2. Canada
3. UK
4. Mexico
Select: Pick 0 Through 4
#>

#Creates A Function 
Function Nord {
#Displays the GUI and saves your input
    $sele = Read-Host "0. Disconnect`n1. United States`n2. Canada`n3. UK`n4. Mexico`nSelect"
#Gets a sting that corrisponds to your input
    if ($sele -eq 1) {$Loca = "'United States'"}
    if ($sele -eq 2) {$Loca = "'Canada'"}
    if ($sele -eq 3) {$Loca = "'United Kingdom'"}
    if ($sele -eq 4) {$Loca = "'Mexico'"}
#Else statement diconnects you from current connection if any    
    else {    
    Push-Location 'C:\Program Files\NordVPN'
    "NordVPN -d" | cmd
    Pop-Location 
    }
#Push-Location moves you the the Directory that is needed to use Nord Commands
    Push-Location 'C:\Program Files\NordVPN'
#uses command put string from select menu, and pipes the command into Command Prompt(only place Nord commands work)
    "NordVPN -c -g$Loca" | cmd
#moves you back to your orignal command
    Pop-Location
}
