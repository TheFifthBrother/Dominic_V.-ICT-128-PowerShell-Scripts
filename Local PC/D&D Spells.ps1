#.CREATED BY: Dominic Vienneau
#.CREATED ON: April 10, 2022
#.MODIFID ON: April 13, 2022
<#
.SYNOPSIS
Holds D&D Charater Spell information & Slot counts for display in the D&D Character_Sheet.ps1

.DESCRIPTION
Simple GUI format for spells that will display in GUI along with Spells stored as hashtables.
#>

$1Slots = "         (/)","         ( )"
$2Slots = "      (/)(/)","      (/)( )","      ( )( )"
$3Slots = "   (/)(/)(/)","   (/)(/)( )","   (/)( )( )","   ( )( )( )"
$4Slots = "(/)(/)(/)(/)","(/)(/)(/)( )","(/)(/)( )( )","(/)( )( )( )","( )( )( )( )"

$S1 = 4
$S2 = 3

$CureWounds = @{ 'lvl' = '1st'; 'CastingTime' = '1 Action'; 'Description' = 'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs. At Higher Levels. When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d8 for each slot level above 1st.' }