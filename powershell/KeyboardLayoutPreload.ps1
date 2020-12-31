REG LOAD HKLM\DEFAULT C:\Users\Default\NTUSER.DAT

$regPath  = "HKLM:\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"
$regKey   = "LanguageList"
$regValue = 'powershell.exe -command "Set-WinUserLanguageList -LanguageList en-US, ru, uk -Force"'


IF ( ! ( Test-Path $regPath) ) { New-Item -Path $regPath -Force | Out-Null }

New-ItemProperty -Path $regPath -Name $regKey -Value $regValue -PropertyType STRING -Force | Out-Null


REG UNLOAD HKLM\DEFAULT


