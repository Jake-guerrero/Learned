#Unit 2 - Programming and Scripting Fundamentals

#$x = 23

#if ($x -gt 20) {
 #   Write-Host "x is greater than 20"
#} elseif ($x -eq 23) {
#} else {
#    Write-Host "x is greater than 20"
#}

#$x = 6

#if(($x -ne 5) -and ($x -eq 6)) {
#    Write-Host $x "is not equal to five or is equal to 6"
#} else {
#    Write-Host $x "is equal to five"
#}

#for ($i = 1; $i -lt 10; $i++) {
#    if($i -eq 5) {
#        break
#    }
#    Write-Host $i
#}

#$HaloCharacters = @('Master Chief', 'Cortana', 'Keyes', 'Johnson')

#Foreach ($character in $HaloCharacters) {
#    Write-Host $character "has arrived!"
#    Write-Host $character.Length
#}

#$Xmen = @('Wolverwine', 'Cyclops', 'Storm', 'Professor X', 'Gambit')
#$counter = 0
#While($counter -ne 6) {
 #   Write-Host $Xmen[$counter]
  #  $counter++
#}
#Do {
 #   Write-Host $Xmen[$counter] "is a mutant"
  #  $counter++
#} While ($counter -ne 6)

$House = "Targaryen"
Switch($house) {
    "Targaryen" { Write-Host "You're crazy!"; break }
    "Lannister" { Write-Host "You always pay your debts"; break }
    "Stark" { Write-Host "Nothing bad happing by the wall, right?"; break }
    "Baratheon" { "Be careful boar hunting!" }
    Default: {Write-Host "Hopefully you're somewhere peaceful!" }
}