# OneDrive Standalone Update Task
Get-ScheduledTask -TaskName 'OneDrive Standalone Update*' | Disable-ScheduledTask

# Save documents to OneDrive by default
reg add "HKLM\Software\Policies\Microsoft\Windows\OneDrive" /v DisableLibrariesDefaultSaveToOneDrive /t REG_DWORD /d 0 /f

REG LOAD HKLM\DEFAULT C:\Users\Default\NTUSER.DAT

# Remove OneDrive Icon from Navigation Pane
reg add "HKLM\DEFAULT\Software\Classes\CLSID{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /t REG_DWORD /d 0 /f     
reg add "HKLM\DEFAULT\Software\Classes\Wow6432Node\CLSID{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /t REG_DWORD /d 0 /f 

# Remove OneDrive
reg delete  "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDrive /f
reg delete  "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDriveSetup /f

REG UNLOAD HKLM\DEFAULT