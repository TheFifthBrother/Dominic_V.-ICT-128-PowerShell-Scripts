#.CREATED BY: Dominic Vienneau
#.CREATED ON: April 08, 2022
#.MODIFID ON: April 13, 2022
<#
.SYNOPSIS
Holds D&D Charater information

.DESCRIPTION
Used to store character infomations and display it into D&D Character_Sheet.ps1
Changing this Data(Character) will display different infomation into the GUI.
#>

#Charater Info
$name = "Dorian Graystone"
$class = "Rogue 6 / Cleric 4"
$Race = "Human"
$Alignment = "N/N"

#Charater States/Skills
$StrState = 11
$StrBonus = [Math]::Truncate(($StrState - 10) * 0.5) 
$Strength = @{ Bonus = $StrBonus ; State = $StrState ; SavingThrow = $StrBonus ; Athletics = $StrBonus+($proB*2)}
$DexState = 23
$DexBonus = [Math]::Truncate(($DexState - 10) * 0.5) 
$Dexterity = @{ Bonus = $DexBonus ; State = $DexState ; SavingThrow = $DexBonus ; Acrobatics = $DexBonus+($proB*2); SleightOfHand = $DexBonus; Stealth = $DexBonus+($proB*2)}
$ConState = 16
$ConBonus = [Math]::Truncate(($ConState - 10) * 0.5) 
$Constitution = @{ Bonus = $ConBonus ; State = $ConState ; SavingThrow = $ConBonus}
$IntState = 7
$IntBonus = [Math]::Truncate(($IntState - 10) * 0.5) 
$Intelligence = @{ Bonus = $IntBonus ; State = $IntState ; SavingThrow = $IntBonus ; Arcana = $IntBonus; History = $IntBonus; Investigation = $IntBonus; Nature = $IntBonus; Religion = $IntBonus}
$WisState = 17
$WisBonus = [Math]::Truncate(($WisState - 10) * 0.5) 
$Wisdom = @{ Bonus = $WisBonus ; State = $WisState ; SavingThrow = $WisBonus ; AnimalHandling = $WisBonus; Insight = $WisBonus+$proB; Medicine = $WisBonus; Perception = $WisBonus+($proB*2); Survival = $WisBonus}
$ChaState = 11
$ChaBonus = [Math]::Truncate(($ChaState - 10) * 0.5) 
$Charisma = @{ Bonus = $ChaBonus ; State = $ChaState ; SavingThrow = $ChaBonus ; Deception = $ChaBonus; Intimidation = $ChaBonus; Performance = $ChaBonus; Persuasion = $ChaBonus}

#Charater Attrabutes 
$ProB = +4
$MaxHP = 96
$CurHP = 75
$TempHP = 0
$Init = $DexBonus
$PassPer = ($Wisdom.Perception + 10)
$Armor = ($DexBonus + 10 )
$Speed = 30
$SpellDC = 8 + $ProB + $WisBonus
$SpellAtt = $ProB + $WisBonus

