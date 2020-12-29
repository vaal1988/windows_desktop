# Disable Edge shortcut
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableEdgeDesktopShortcutCreation" /t REG_DWORD /d "1" /f