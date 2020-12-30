REG LOAD HKLM\DEFAULT C:\Users\Default\NTUSER.DAT

reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v LanguageList /t REG_SZ /d "C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe -command 'Set-WinUserLanguageList -LanguageList en-US, ru, uk -Force'" /f

REG UNLOAD HKLM\DEFAULT