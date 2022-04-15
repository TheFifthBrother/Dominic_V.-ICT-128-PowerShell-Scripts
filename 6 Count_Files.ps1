#.CREATED BY: Dominic Vienneau
#.CREATED ON: April 11, 2022
#.MODIFID ON: April 13, 2022
<#
.DESCRIPTION
Adds up the total of Scripts Currently written in my Directorys
#>

Push-Location -Path "D:\Okanagan Collage ICT Spr 2022\ICT-128\Final Project\Dominic's Scripts\Lab PC's\RauDz.ca Scripts"
$1 = (Get-ChildItem -File | Measure-Object).Count
Push-Location -Path "D:\Okanagan Collage ICT Spr 2022\ICT-128\Final Project\Dominic's Scripts\Local PC"
$2 = (Get-ChildItem -File | Measure-Object).Count
Push-Location -Path "D:\Okanagan Collage ICT Spr 2022\ICT-128\Final Project\Dominic's Scripts\VM's and Other PC's"
$3 = (Get-ChildItem -File | Measure-Object).Count
Pop-Location
$Total = $1 + $2 + $3
Write-Host $Total

