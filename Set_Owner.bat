@echo off
goto admin

:admin
    cls
	net session >nul 2>&1
    if %errorLevel% EQU 0 (
        goto begin
    ) 
	else (
        echo Script wasn't launched as administrator. Please re-run with elevated permissions.
		pause
		goto:eof
    )

:begin
echo.
echo Please enter the directory you want to change ownership of.
echo 
echo.


set /p dy= : 

takeown /f %dy% /r /a

pause
