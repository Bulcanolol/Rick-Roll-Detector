@echo off
title rickrolldetector
set /p url=Enter WebSite URL: 


curl -X GET %url% | findstr /C:"https://youtu.be/dQw4w9WgXcQ">nul && (
    
   %Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red "[X] Rickroll Found"
) || (
    %Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Green "[V] Rickroll Not Found"
)
pause
title cmd