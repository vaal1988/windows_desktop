# Disable Privacy Settings Experience at Sign-in

reg add "HKLM\Software\Policies\Microsoft\Windows\OOBE" /v DisablePrivacyExperience /t REG_DWORD /d 1 /f