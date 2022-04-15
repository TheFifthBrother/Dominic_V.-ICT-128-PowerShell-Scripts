#.CREATED BY: Dominic Vienneau
#.CREATED ON: April 14, 2022
#.MODIFID ON: April 14, 2022
<#
.SYNOPSIS
Takes in info from a specific website spell page and sorts the data into a usable hashtable 

.DESCRIPTION
Go to page of spell you wish to extract paste into the weblink and watch the magic
#>
#Retrives from website
$SpellInfo = Invoke-WebRequest http://dnd5e.wikidot.com/spell:word-of-radiance

#Finds the line that will have the Name of spell in it
$Name = $SpellInfo.toString() -split "[`r`n]" | Select-String "page-title page-header"

#Removes Extra characters in string
$Name = $Name -Replace '<div class="page-title page-header"><span>' -Replace "</span></div>"

#Removes the space in the name to make it usable for the Hashtable name
$VarName = $Name -Replace "[ ]"

#Finds the Infomation inregards to the spell and turns each line into its own string
$Contant = $SpellInfo.tostring() -split "[`r`n]" | Select-String "<p>"

#Removes all of the extra formating that comes from the HTML built in the site
$Contant = $Contant -replace "<p>" -replace "</p>" -replace "</em>" -replace "<strong>" -replace "<br />" -replace "<em>" -replace "</strong>" -replace "Source:" -Replace "Casting Time:" -Replace "At Higher Levels."

#Usable the $VarName to create the name of the hashtable (should be spell name without spaces)
New-Variable -name $VarName -Value @{
    #Fill in all the infomation into the hashtable
    Name = "Name: " +$Name
    Source = "Source:" + $Contant[0] 
    Level = "Level: " + $Contant[1]
    CastingTime = "Casting Time:" + $Contant[2] 
    Description = "Description: " + $Contant[3]
    Higherlevel = "At Higher Level: " + $Contant[4]
}
#Prints it all out to the Screen to verify that it worked
Write-Host $WordOfRadiance.Name
Write-Host $WordOfRadiance.CastingTime
Write-Host $WordOfRadiance.Level `n
Write-Host $WordOfRadiance.Description `n
Write-Host $WordOfRadiance.Higherlevel `n
Write-Host $WordOfRadiance.Source 