@echo off
SETLOCAL ENABLEEXTENSIONS
pushd %~dp0

set machotkey="machotkey.exe"
set taskname="machotkey"

:: escape double quotes and expand paths
for /f "delims=" %%v in ("%machotkey%") do set machotkey=%%~fv
for /f "delims=" %%v in ("%taskname%") do set taskname=%%~v

echo Register or unregister a schedule task to
echo automatic launch when your login.
echo.
echo Tip: You should run this as the administrator.
echo.
echo The mackhotkey file is %machotkey%
echo The taskname is %taskname%
echo.

if not exist "%machotkey%" (
    echo File %machotkey% is not existed.
    goto :err
)
if exist "%machotkey%\*" (
    echo %machotkey% is not a file.
    goto :err
)
goto :check

:check
schtasks.exe /Query /TN %taskname%>nul 2>nul
if ERRORLEVEL 1 goto :reg
goto :unreg

:reg
echo Register a schedule task: %taskname%
set /p tmpInput=Are you ready? (Y/N):^ 
if /i "%tmpInput%" neq "y" goto :cancel
schtasks.exe /Create /TN %taskname% /RU Users /SC ONLOGON /TR %machotkey%
if ERRORLEVEL 1 goto :err
echo OK
goto :end

:unreg
echo Unregister schedule task: %taskname%
set /p tmpInput=Are you ready? (Y/N):^ 
if /i "%tmpInput%" neq "y" goto :cancel
schtasks.exe /Delete /TN %taskname% /F
if ERRORLEVEL 1 goto :err
echo OK
goto :end

:cancel
echo Cancelled.
goto :over

:err
echo Failed.
goto :end

:end
echo Press any key to EXIT...
pause>nul

:over
popd
