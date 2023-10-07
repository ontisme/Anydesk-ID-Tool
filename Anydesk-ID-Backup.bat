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
xcopy "%appdata%\AnyDesk\service.conf" "%~dp0" /i /e /y
xcopy "%appdata%\AnyDesk\system.conf" "%~dp0" /i /e /y
cls
@echo Backup Successfully
pause
exit /b

:Restore
xcopy "service.conf" "%appdata%\AnyDesk" /i /e /y /v /h
xcopy "system.conf" "%appdata%\AnyDesk" /i /e /y /v /h
cls
@echo Restored Successfully
pause
exit /b
