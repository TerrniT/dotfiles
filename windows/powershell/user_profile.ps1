# Prompt
#Import-Module posh-git
#Import-Module oh-my-posh

# Terminal settings
# Load my custom oh-my-posh theme

oh-my-posh.exe init pwsh | Invoke-Expression
oh-my-posh init pwsh --config C:\Users\super\.config\windows\powershell\themes\atomic.omp.json | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression

# Icons
Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fuzzyfinder
Import-Module PSFzf
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineReverseHistory 'Ctrl+r'

# Aliases
Set-Alias vi nvim
Set-Alias ll ls 
Set-Alias g git 
Set-Alias grep findstr
Set-Alias tig 'C:Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:Program Files\Git\usr\bin\less.exe'

Set-PSReadlineOption -ViModeIndicator Script -ViModeChangeHandler {
  Param($mode)
  $Env:SHELL_VI_MODE = $mode
  # go back to the beginning of the line
  Write-Host -NoNewLine "`e[1000D"
  # rewrite the prompt manually
  write-Host -NoNewLine (oh-my-posh --shell pwsh --config ~/.jandedobbeleer.omp.json)
}


