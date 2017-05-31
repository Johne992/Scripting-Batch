REM Command line compiler
REM change file path or update .NET to make it work for your PC!

C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:%1 %2

@echo off

if errorlevel 1 (
   pause
   exit
)

start %1 %1
