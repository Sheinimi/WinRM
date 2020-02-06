@echo off
set currentpath=%~dp0

PowerShell %currentpath%/Install_winrm.ps1 -Verbose
echo "WinRM installed."
Pause

echo "Deleting Install_requirements_2008R2_2012.ps1"
del %currentpath%\Install_requirements_2008R2.ps1 /f /q

echo "Deleting Install_winrm.ps1"
del %currentpath%\Install_winrm.ps1 /f /q