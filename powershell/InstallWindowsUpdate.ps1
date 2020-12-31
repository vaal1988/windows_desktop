Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module -Name PSWindowsUpdate -Force
Set-ExecutionPolicy RemoteSigned -Force
Import-Module PSWindowsUpdate
Add-WUServiceManager -ServiceID "7971f918-a847-4430-9279-4a52d1efe18d" -Confirm:$false

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot
