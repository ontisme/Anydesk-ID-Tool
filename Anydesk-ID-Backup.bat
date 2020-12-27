@echo off
setlocal EnableDelayedExpansion

@echo.Anydesk ID and Alias Backup / Restore¡G
@echo.
@echo.===========================
@echo.                1 - Backup
@echo.                2 - Restore
@echo.===========================
@echo.

:Start
choice /c 12 /n /m ">          Choose a option: "

if errorlevel 2 goto Restore
if errorlevel 1 goto Backup 

:Backup
xcopy "%programdata%\AnyDesk" "%~dp0" /i /e /y
cls

@echo Backup Successfully
pause
exit /b

:Restore
xcopy "%~dp0%" "programdata%\AnyDesk" /i /e /y
cls
@echo Restored Successfully
pause
exit /b