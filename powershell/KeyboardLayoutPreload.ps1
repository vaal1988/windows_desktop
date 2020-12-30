REG LOAD HKLM\DEFAULT C:\Users\Default\NTUSER.DAT

Set-RegistryKey -Key 'HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce' -Name 'LanguageList' -Value 'powershell.exe -command "Set-WinUserLanguageList -LanguageList en-US, ru, uk -Force"' -Type String -ContinueOnError:$True

REG UNLOAD HKLM\DEFAULT