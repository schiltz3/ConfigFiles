
Invoke-Expression (&starship init powershell)

Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
# set caps lock to be Shift+Tab in power toys' keyboard manager
Set-PSReadLineKeyHandler -Key Shift+Tab -Function NextSuggestion

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView