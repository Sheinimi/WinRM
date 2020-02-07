@echo off
set currentpath=%~dp0

PowerShell %currentpath%/Install_requirements_2008R2_2012.ps1 -Verbose
echo "Requirements installed."
Pause
