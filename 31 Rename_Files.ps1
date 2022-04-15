Push-Location -Path "C:\Users\Dominic Vienneau\Documents\GitHub\Dominic_V.-ICT-128-PowerShell-Scripts"
$Items = Get-ChildItem -File
$number = 0

foreach ($Item in $Items) {
    $NewName = "(" + [String]$number + ") " + $Item.Name
    Rename-Item -Path $Item.Name -Newname $NewName
    $number++
}
Pop-Location