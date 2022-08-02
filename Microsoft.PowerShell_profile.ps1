oh-my-posh init pwsh --config C:\Users\timze\AppData\Local\Programs\oh-my-posh\themes\tokyo.omp.json | Invoke-Expression

# fix utf 8 encoding problems
[System.Console]::OutputEncoding = [System.Console]::InputEncoding = [System.Text.Encoding]::UTF8

# PS-ReadLine
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle Visual

# aliases
Set-Alias -Name dev -Value Go-To-Dev-Folder
Set-Alias -Name grep -Value Select-String

# helper functions
function Go-To-Dev-Folder {	
  Set-Location -Path "D:\Dev"
}
