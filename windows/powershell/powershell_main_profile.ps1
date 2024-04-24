. $env:USERPROFILE/.config/windows/powershell/user_profile.ps1

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile))
{
  Import-Module "$ChocolateyProfile"
}

Set-Alias lvim 'C:\Users\super\.local\bin\lvim.ps1'


function pt
{
  param(
    [string]$action
  )

  if ($action -eq "enable")
  {
    Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
    Write-Host "PowerType plugin successfully enabled!"
  } elseif ($action -eq "disable")
  {
    Set-PSReadLineOption -PredictionSource None 
    Write-Host "PowerType plugin successfully disabled!"
  } else
  {
    Write-Host "Please specify either 'enable' or 'disable' as an argument."
  }
}

Set-Alias powertype pt


