# REG LOAD HKLM\DEFAULT C:\Users\Default\NTUSER.DAT

# reg add "HKLM\DEFAULT\Keyboard Layout\Preload" /v "1" /t REG_SZ /d "00000409" /f     
# reg add "HKLM\DEFAULT\Keyboard Layout\Preload" /v "2" /t REG_SZ /d "00000419" /f 
# reg add "HKLM\DEFAULT\Keyboard Layout\Preload" /v "3" /t REG_SZ /d "00000422" /f  

# REG UNLOAD HKLM\DEFAULT
