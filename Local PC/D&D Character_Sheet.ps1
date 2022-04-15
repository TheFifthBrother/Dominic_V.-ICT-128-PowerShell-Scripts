#.CREATED BY: Dominic Vienneau
#.CREATED ON: April 08, 2022
#.MODIFID ON: April 13, 2022
<#
.SYNOPSIS
Holds D&D Charater information and then displays them as a GUI

.DESCRIPTION
Does all of he Math for a D&D Charater sheet and then desplays them in a orginazed view 
Note Infomation Can be imported from a different source. 

.EXAMPLE
 ________________________________________
|                                        |_____________________________________________________________
|          Dorian Graystone              |      Rogue 6 / Cleric 4            Human and N/N            |
|          --------------------          |      ------------------            ------------------       |
|          Character Name                |      Class & Level                 Race $ Alignment         |
|________________________________________|_____________________________________________________________|
          __           __           __           __           __            __            __
         /  \         /  \         /  \         /  \         /  \          /  \          /  \
        < +4 >       < +6 >       < 10 >       < 10 >       < 30 >        < 12 >        < +4 >
         \__/         \__/         \__/         \__/         \__/          \__/          \__/      
      Proficiency  Initiative   Perception   Armor Class    Speed    Spell Save DC   Spell Attack  
        ____  
       |    | Athletics:     8       __________Health__________       
  Bonus| +0 |                       |                          |      
  State| 11 |                       |   Current HP:     75     |     
       |____|                       |  ----------------------  |      
     Strength                       |     96     |         0   |      
       Saving Throw: 0              | Max HP:    |    Temp HP: |       
        ____                        |__________________________|       
       |    | Acrobatics:    14
  Bonus| +6 | SleightOfHand: 6       Spell Slots
  State| 23 | Stealth:       14        Level 1 Spells
       |____|                            Available ( )( )( )( )
    Dexterity                          Level 2 Spells
       SavingThrow: 6                    Available    ( )( )( )
        ____                         Extra Slots
       |    |                          Hex Slot (Feat)
  Bonus| +3 |                            Available          ( )
  State| 16 |                          Misty Slot (Feat)       
       |____|                            Available          ( )
 Constitution                          Battle Master (Feat)    
       SavingThrow: 3                    Available    ( )( )( )
        ____  
       |    | Arcana:        -1
  Bonus| -1 | History:       -1
  State|  7 | Investigate:   -1
       |____| Nature:        -1
 Intelligence Religion:      -1
       SavingThrow: -1
        ____  
       |    | Insight:       7 
  Bonus| +3 | Medicine:      3 
  State| 17 | Perception:    11
       |____| Survival:      3 
       Wisdom AnimalHandling:3 
       SavingThrow: 3
        ____  
       |    | Deception:     0
  Bonus| +0 | Intimidation:  0
  State| 11 | Performance:   0
       |____| Persuasion:    0
     Charisma 
       SavingThrow: 0
#>

#Character Info
$name = "Dorian Graystone"
$class = "Rogue 6 / Cleric 4"
$Race = "Human"
$Alignment = "N/N"

#Character Attributes 
$ProB = +4
$MaxHP = 96
$CurHP = 75
$TempHP = 0
$Init = $Dexterity.Bonus
$PassPer = $Wisdom.Perception + 10
$Armor = 10 + $Dexterity.Bonus
$Speed = 30
$SpellDC = 8 + $ProB + $WisBonus
$SpellAtt = $ProB + $WisBonus
$Hex = 1
$Misty = 1
$MarD = 3

#Character States/Skills
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

Import-Module "D:\Okanagan Collage ICT Spr 2022\ICT-128\Final Project\Dominic's Scripts\Local PC\D&D Spells.ps1"
#Import-Module "D:\Okanagan Collage ICT Spr 2022\ICT-128\Final Project\Dominic's Scripts\Local PC\Charater_Info.ps1"

While ($True){ Clear
    Write-Host `n `n 
    Write-Host  " ________________________________________"  -ForegroundColor DarkCyan
    Write-Host "|                                        |_____________________________________________________________"  -ForegroundColor DarkCyan  
    Write-Host "|          $name              |" -ForegroundColor 'White' -NoNewline; Write-Host "      $class            " -NoNewline; Write-Host "$Race and $Alignment            |"
    Write-Host "|          --------------------          |" -ForegroundColor 'DarkCyan' -NoNewline; Write-Host  "      ------------------            " -ForegroundColor 'DarkCyan' -NoNewline; Write-Host "------------------       |" -ForegroundColor 'DarkCyan'
    Write-Host "|          Character Name                |" -ForegroundColor 'DarkCyan' -NoNewline; Write-Host  "      Class & Level                 " -ForegroundColor 'DarkCyan' -NoNewline; Write-Host "Race $ Alignment         |" -ForegroundColor 'DarkCyan'
    Write-Host "|________________________________________|_____________________________________________________________|"  -ForegroundColor DarkCyan
    Write-Host "          __           __           __           __           __            __            __" -ForegroundColor DarkCyan
    Write-Host "         /  \         /  \         /  \         /  \         /  \          /  \          /  \" -ForegroundColor DarkCyan    
    Write-Host "        < +$ProB >       < +$Init >       < $PassPer >       < $Armor >       < $Speed >        < $SpellDC >        < +$SpellAtt >"    
    Write-Host "         \__/         \__/         \__/         \__/         \__/          \__/          \__/" -ForegroundColor DarkCyan            
    Write-Host "      Proficiency  Initiative   Perception   Armor Class    Speed    Spell Save DC   Spell Attack  " -ForegroundColor DarkCyan
    Write-Host "        ____  " -ForegroundColor DarkCyan
    Write-Host "       |    | " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Athletics:     " -NoNewline; Write-Host $Strength.Athletics                         -NoNewline; Write-Host "       __________Health__________       " -ForegroundColor DarkCyan
    Write-Host "  Bonus| +$StrBonus |                 " -ForegroundColor DarkRed                                                                                                                          -NoNewline; Write-Host "      |                          |      " -ForegroundColor DarkCyan
    Write-Host "  State| $StrState |                 " -ForegroundColor DarkRed                                                                                                                           -NoNewline; Write-Host "      |   Current HP:     " -ForegroundColor DarkCyan -NoNewline; Write-Host $CurHP -NoNewline; Write-Host "     |     "  -ForegroundColor DarkCyan 
    Write-Host "       |____|                 " -ForegroundColor DarkCyan                                                                                                                                 -NoNewline; Write-Host "      |  ----------------------  |      " -ForegroundColor DarkCyan
    Write-Host "     Strength                 " -ForegroundColor DarkRed                                                                                                                                  -NoNewline; Write-Host "      |     " -ForegroundColor DarkCyan -NoNewline; Write-Host $MaxHP -NoNewline; Write-Host "     |         "  -ForegroundColor DarkCyan  -NoNewline; Write-Host $TempHP -NoNewline; Write-Host "   |      " -ForegroundColor DarkCyan  
    Write-Host "       "                                       -NoNewline; Write-Host -ForegroundColor Gray "Saving Throw: " -NoNewline;  Write-Host $Strength.SavingThrow "        "-ForegroundColor DarkRed    -NoNewline; Write-Host "     | Max HP:    |    Temp HP: |      " -ForegroundColor DarkCyan
    Write-Host "        ____                  " -ForegroundColor DarkCyan                                                                                                                                 -NoNewline; Write-Host "      |__________________________|       " -ForegroundColor DarkCyan
    Write-Host "       |    | " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Acrobatics:    " -NoNewline; Write-Host $Dexterity.Acrobatics
    Write-Host "  Bonus| +$DexBonus | " -ForegroundColor DarkGreen  -NoNewline; Write-Host -ForegroundColor DarkGray "SleightOfHand: " -NoNewline; Write-Host $Dexterity.SleightOfHand                    -NoNewline; Write-Host "       Spell Slots" -ForegroundColor DarkYellow
    Write-Host "  State| $DexState | " -ForegroundColor DarkGreen   -NoNewline; Write-Host -ForegroundColor DarkGray "Stealth:       " -NoNewline; Write-Host $Dexterity.Stealth                          -NoNewline; Write-Host "        Level 1 Spells"    
    Write-Host "       |____|                     " -ForegroundColor DarkCyan                                                                                                                             -NoNewline; Write-Host "       Available"        $4Slots[$S1] -ForegroundColor DarkGray
    Write-Host "    Dexterity " -ForegroundColor DarkGreen                                                                                                                                                -NoNewline; Write-Host "                         Level 2 Spells"
    Write-Host "       "                                       -NoNewline; Write-Host -ForegroundColor Gray "SavingThrow: " -NoNewline; Write-Host $Dexterity.SavingThrow -ForegroundColor DarkGreen      -NoNewline; Write-Host "                    Available"        $3Slots[$S2] -ForegroundColor DarkGray
    Write-Host "        ____             " -ForegroundColor DarkCyan                                                                                                                                      -NoNewline; Write-Host "            Extra Slots" -ForegroundColor DarkRed
    Write-Host "       |    | " -ForegroundColor DarkCyan                                                                                                                                                 -NoNewline; Write-Host "                         Hex Slot " -NoNewline; Write-Host "(Feat)" -ForegroundColor DarkGray
    Write-Host "  Bonus| +$ConBonus | " -ForegroundColor DarkGray                                                                                                                                         -NoNewline; Write-Host "                           Available"        $1Slots[$Hex] -ForegroundColor DarkGray
    Write-Host "  State| $ConState | " -ForegroundColor DarkGray                                                                                                                                          -NoNewline; Write-Host "                         Misty Slot " -NoNewline; Write-Host "(Feat)" -ForegroundColor DarkGray
    Write-Host "       |____| " -ForegroundColor DarkCyan                                                                                                                                                 -NoNewline; Write-Host "                           Available"        $1Slots[$Misty] -ForegroundColor DarkGray
    Write-Host " Constitution " -ForegroundColor DarkGray                                                                                                                                                 -NoNewline; Write-Host "                         Battle Master" -NoNewline; Write-Host " (Feat)" -ForegroundColor DarkGray
    Write-Host "       "                                        -NoNewline; Write-Host -ForegroundColor Gray "SavingThrow: " -NoNewline; Write-Host $Constitution.SavingThrow -ForegroundColor DarkGray   -NoNewline; Write-Host "                    Available"        $3Slots[$MarD] -ForegroundColor DarkGray
    Write-Host "        ____  " -ForegroundColor DarkCyan           
    Write-Host "       |    | " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Arcana:        " -NoNewline; Write-Host $Intelligence.Arcana 
    Write-Host "  Bonus| $IntBonus | " -ForegroundColor Blue        -NoNewline; Write-Host -ForegroundColor DarkGray "History:       " -NoNewline; Write-Host $Intelligence.History
    Write-Host "  State|  $IntState | " -ForegroundColor Blue       -NoNewline; Write-Host -ForegroundColor DarkGray "Investigate:   " -NoNewline; Write-Host $Intelligence.Investigation
    Write-Host "       |____| " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Nature:        " -NoNewline; Write-Host $Intelligence.Nature
    Write-Host " Intelligence " -ForegroundColor DarkBlue           -NoNewline; Write-Host -ForegroundColor DarkGray "Religion:      " -NoNewline; Write-Host $Intelligence.Religion     
    Write-Host "       "                                        -NoNewline; Write-Host -ForegroundColor Gray "SavingThrow: " -NoNewline; Write-Host $Intelligence.SavingThrow -ForegroundColor Blue
    Write-Host "        ____  " -ForegroundColor DarkCyan           
    Write-Host "       |    | " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Insight:       " -NoNewline; Write-Host $Wisdom.Insight
    Write-Host "  Bonus| +$WisBonus | " -ForegroundColor DarkYellow -NoNewline; Write-Host -ForegroundColor DarkGray "Medicine:      " -NoNewline; Write-Host $Wisdom.Medicine
    Write-Host "  State| $WisState | " -ForegroundColor DarkYellow  -NoNewline; Write-Host -ForegroundColor DarkGray "Perception:    " -NoNewline; Write-Host $Wisdom.Perception
    Write-Host "       |____| " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Survival:      " -NoNewline; Write-Host $Wisdom.Survival
    Write-Host "       Wisdom " -ForegroundColor DarkYellow         -NoNewline; Write-Host -ForegroundColor DarkGray "AnimalHandling:" -NoNewline; Write-Host $Wisdom.AnimalHandling
    Write-Host "       "                                         -NoNewline; Write-Host -ForegroundColor Gray "SavingThrow: " -NoNewline; Write-Host $Wisdom.SavingThrow -ForegroundColor DarkYellow
    Write-Host "        ____  " -ForegroundColor DarkCyan 
    Write-Host "       |    | " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Deception:     " -NoNewline; Write-Host $Charisma.Deception
    Write-Host "  Bonus| +$ChaBonus | "-ForegroundColor DarkMagenta -NoNewline; Write-Host -ForegroundColor DarkGray "Intimidation:  " -NoNewline; Write-Host $Charisma.Intimidation
    Write-Host "  State| $ChaState | " -ForegroundColor DarkMagenta -NoNewline; Write-Host -ForegroundColor DarkGray "Performance:   " -NoNewline; Write-Host $Charisma.Performance
    Write-Host "       |____| " -ForegroundColor DarkCyan           -NoNewline; Write-Host -ForegroundColor DarkGray "Persuasion:    " -NoNewline; Write-Host $Charisma.Persuasion
    Write-Host "     Charisma " -ForegroundColor DarkMagenta 
    Write-Host "       "                                         -NoNewline; Write-Host -ForegroundColor Gray "SavingThrow: " -NoNewline; Write-Host $Charisma.SavingThrow -ForegroundColor DarkMagenta
    $ans = Read-Host "Place Holder"
    Return $False

}