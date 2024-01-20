# How to remove standart basket in Windows 10 Registry
Policy -> Win+R - gpedit.msc - user configuration - administrative template - desktop - delete "basket" from desktop

#New shortcut to clear basket
On pc create a shortcut -> powershell.exe -command "& {Clear-RecycleBin -Force}"

Clear-RecycleBin -Force
#Invoke-Command -ComputerName Test-PC -ScriptBlock{Clear-RecycleBin -Force}