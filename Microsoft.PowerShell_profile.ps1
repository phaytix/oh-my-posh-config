# Just the directory im using for this just switch it to the one youll be using
oh-my-posh init pwsh --config C:\Users\User\CODE\ohMyPoshConfigs\User.omp.json | Invoke-Expression


# The term xx/oh-my-posh.exe is not recognized as a name of a cmdlet ------- look into the https://ohmyposh.dev/docs/faq if you have
# any other issues
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding



# Dont remeber why I didnt need this anymore but in v7.80.1 you dont need it im pretty sure but I could be wrong
# Prompt
#Import-Module posh-git
#Import-Module oh-my-posh

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# So I broke this and havent fixed it yet so thats why its commented out and tbh I barely used it
# Fzf
#Import-Module PSFzf
#Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
