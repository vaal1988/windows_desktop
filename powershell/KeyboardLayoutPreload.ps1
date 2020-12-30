REG LOAD HKLM\DEFAULT C:\Users\Default\NTUSER.DAT

reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v LanguageList /t REG_SZ /d 'powershell -command "Set-WinUserLanguageList -LanguageList en-US, ru, uk -Force"' /f

REG UNLOAD HKLM\DEFAULT