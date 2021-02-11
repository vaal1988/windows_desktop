# powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vaal1988/windows_desktop/main/powershell/InstallUpdates.ps1'))"


if (!(Test-Path C:\install)) { 

  Write-Host "Creating filder"
  New-Item -ItemType Directory -Force -Path C:\install 
  Write-Host ""
  
}

$WinUpdates = [ordered]@{ 

  # Средство удаления вредоносных программ для платформы x64: v5.86 (KB890830)
  KB890830 = "http://download.windowsupdate.com/d/msdownload/update/software/uprl/2021/02/windows-kb890830-x64-v5.86_bdca35c097edf5a4fb42bc6d06e9bdfcef5c9a20.exe"

  # 2021-02 Накопительное обновление .NET Framework 3.5 и 4.8 для Windows 10, version 20H2 для x64 систем (KB4601050)
  KB4601050 = "http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows10.0-kb4601050-x64-ndp48_cb09a1198335a24535d73b8ddfa4196ba5edc115.cab"

  # Накопительное обновление для Windows 10 Version 20H2 для систем на базе процессоров x64, 2021 02 (KB4601319)
  KB4601319 = "http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/02/windows10.0-kb4601319-x64_fa56d86b14e97133976a808e521f891ee180e101.msu"

 }

$WebClient = New-Object System.Net.WebClient

foreach ($KB in $WinUpdates.GetEnumerator()) {

  Write-Host "downloading $($KB.Name)"
  $WebClient.DownloadFile("$($KB.Value)","C:\install\$(Split-Path $($KB.Value) -Leaf)")  
    
}
