#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 4
#.MODIFID: Saturday, Match 13
<#
.SYNOPSIS
Uses an Exported file to configure and pick downloads on to windows server 2019 

.DESCRIPTION
The script and the file must be in the desktop of the administrator account to run properly
#>

Install-WindowsFeature -ConfigurationFilePath C:\Users\Administrator\Desktop\DeploymentRauDZ.ca.xml