@echo off
set currentpath=%~dp0

if "%~1" neq "" goto :%~1

Powershell -Command "& { Start-Process \"%currentpath%requirements.bat\" -verb RunAs}"
Pause

call :reboot part2
goto :eof

:part2
Powershell -Command "& { Start-Process \"%currentpath%winrm.bat\" -verb RunAs}"
Pause

del %currentpath%\requirements.bat /f /q
del %currentpath%\winrm.bat /f /q
del "%~f0" & exit

:reboot
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /t REG_SZ /d "\"%~dpf0\" %~1" /v  RestartMyScript /f
shutdown /r /t 0

