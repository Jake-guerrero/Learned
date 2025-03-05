$characters = @(
"Donkey Kong",
"Diddy Kong",
"Cranky Kong")

$characters | Where-Object { $PSItem -like "D" }