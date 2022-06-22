$current = (Get-Date -format "HH:mm")
$end = (Get-Date "17:30" -format "HH:mm")
$minutes = (New-TimeSpan -start $current -end $end).TotalMinutes
Write-Output $minutes
#param($minutes = 428)

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
  Start-Sleep -Seconds 60
  #$myshell.sendkeys(".")
  $myshell.sendkeys("{NUMLOCK}{NUMLOCK}")
}