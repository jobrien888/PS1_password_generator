# temporary password generator

$adjs = "North", "West", "South", "East"
$states= "Carolina", "Florida", "Maryland", "Georgia", "California", "Texas"
$specialchar = "!", "@", "#", "$"

$end = 1

while($end -eq 1)  # starts loop that gives option to generate another password or stop the script
{
    $password = ""
    $input = Read-Host -Prompt "Please type 'Another' or 'Stop'"
    if($input -eq "Another")  # generates random password using 1 adj and 1 state name
        {
            $password += Get-Random $adjs
            $password += Get-Random $states

            if($password.length -ge 12)  # adds 22! to password if password at least 12 characters
            {
                $password += ("22" + (Get-Random $specialchar))
                Write-Host "`n", "`tTemporary Password: ", $password, "`n"
                Continue
            }
            if($password.length -ge 10)  # adds 2022! to password if password is between 10-12 characters
            {
                $password += ("2022" + (Get-Random $specialchar))
                Write-Host "`n", "`tTemporary Password: ", $password, "`n"
                Continue
            }
            if($password.length -lt 10)  # restarts loop if password less than 10 characters
            {
                Continue
            }
        }
    if($input -eq "STOP")  # stops loop if 'STOP' is entered as input
        {
            Write-Host "`n", "Ending process...", "`n"
            $end = 0
        }
}

