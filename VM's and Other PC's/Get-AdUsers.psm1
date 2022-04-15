<# 
.CREATED BY: Dominic Vienneau
.CREATED ON: April 11, 2022

.SYNOPSIS
2 different built function to call upon to get the ADusers in a Domain Name Space

.DESCRIPTION
Get-AllAdUsers will get every AD User on a given server
Get-GroupADUsers You pick a Domain Name Controller Path, and and OU path and with give you every user within that Path (Including folder with in that Path)
Use that <Export> at the end of the function to Export all the user taken in, to a CSV file

.PARAMETER Number 1
Only takes in Export or nothing if you put Export it will export the data to a file. Other wise it will just print the info onto the screen

.EXAMPLE
Virtual Machines Names you want info from? : Example_PC

#>

#This function just allows you to skip over adding the extra -Filter that is required with Get-ADUser and get all users
#Export just allow you to simple Export all the Data to a CSV file
Function Get-AllADUsers {
    param (
        [string] $Export
    )
    Get-ADUser -Filter * 
    If ($Export -eq "Export") { Get-ADUser -Filter * | Export-CSV "$FullStr.Csv" }   
}

#Allows you select the Domain and the Path of OU that you want to get the User's from. 
Function Get-GroupADUsers {
    param (
        [string] $Export
    )
    $FullDC = Read-Host "Full Domain Name (int.Example.com)"
    $FullOU = Read-Host "Full Domain Name (HR.Staff.Office)"
    $SpDC = $FullDC.Split('.')
    Foreach ($DC in $SpDC) {$DomainName += "DC=$DC,"}
    $SpOU = $FullOU.Split('.')
    Foreach ($OU in $SpOU) {$OrganizationalUnit += "OU=$OU,"}
    $FullStr = $OrganizationalUnit + $DomainName
    
    
    Get-ADUser -Filter * -SearchBase "$FullStr"
    If ($Export -eq "Export") { Get-ADUser -Filter * -SearchBase "$FullStr" | Export-CSV "$FullStr.Csv" }
}
