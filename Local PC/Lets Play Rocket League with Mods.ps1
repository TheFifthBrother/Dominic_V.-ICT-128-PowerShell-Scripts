#.CREATER: Dominic Vienneau
#.CREATED: Saturday, April 11
#.MODIFID:
<#
.SYNOPSIS
starts the two programs that I use to play a game together

.DESCRIPTIOn
BakkesMod to work properly must be running first before you start up rocketleague this is just
To save me from needing to shut it down and then start it all up again. 
#>

Start-Process -FilePath 'C:\Program Files\BakkesMod\BakkesMod.exe'
Start-Process -FilePath 'C:\Program Files (x86)\Steam\steamapps\common\rocketleague\Binaries\Win64\RocketLeague.exe'