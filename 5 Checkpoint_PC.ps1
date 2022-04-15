#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, April 05
#.MODIFID: Saturday, April 11
<#
.SYNOPSIS
Creates a Quick Checkpoint on assessed computer

.DESCRIPTION
Can be used on local computer or used within an PSSession- Envoke-Command to save checkpoint to VM or external machines

.PARAMETER Number 1
Takes in the Name that you would like to call the checkpoint

.EXAMPLE
What Would you like to Name your Checkpoint? BeforeTypeofConfiguration
#>

#Prompts you to name your checkpoint 
$info = Write-Host What Would you like to Name your Checkpoint? 

#Creates the check point based off of what you named it
Checkpoint-Computer -Description $info -RestorePointType "Modify_Settings" 