$WebClient = New-Object System.Net.WebClient
$puppetagentx64_download_path = "https://downloads.puppetlabs.com/windows/puppet6/puppet-agent-6.9.0-x64.msi"
$WebClient.DownloadFile("$puppetagentx64_download_path","C:\puppet-agent_x64.msi")

Start-Process msiexec.exe -Wait -ArgumentList "/qn /norestart /i C:\puppet-agent_x64.msi"
Stop-Service -Name 'puppet'
Set-Service -Name 'puppet' -StartupType disabled


# C:\ProgramData\PuppetLabs\puppet\etc\puppet.conf
# [main]
# server=puppet
# environment=environment
# autoflush=true
# manage_internal_file_permissions=false
