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
echo Please enter the directory you want to force copy
echo 
echo.

set /p dy1= : 

echo.
echo Please enter the directory you want to backup to
echo 
echo.

set /p dy2= : 

xcopy /s /i &dy1% %dy2%

pause