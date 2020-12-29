# Remove OneDrive Icon from Navigation Pane
reg add "HKEY_USERS\.DEFAULT\Software\Classes\CLSID{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /t REG_DWORD /d 0 /f     
reg add "HKEY_USERS\.DEFAULT\Software\Classes\Wow6432Node\CLSID{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /t REG_DWORD /d 0 /f 

# Remove OneDrive
reg delete  "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDrive /f
reg delete  "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDriveSetup /f

# OneDrive Standalone Update Task
Get-ScheduledTask -TaskName 'OneDrive Standalone Update*' | Disable-ScheduledTask

# Save documents to OneDrive by default
reg add "HKLM\Software\Policies\Microsoft\Windows\OneDrive" /v DisableLibrariesDefaultSaveToOneDrive /t REG_DWORD /d 0 /f
