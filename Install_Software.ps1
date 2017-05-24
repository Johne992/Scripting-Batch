<#
.SYNOPSIS
A goal for this is to execute and installs each of the files. If possible it could also
...check to see if the files are already installed and then run the .exe or .msi
By: JEL 05/24/2017

Version 0.01: Add preliminary tests to verify concept 

#>

#This stores the location of the file and installs it silently (/s) , (/v) passes arguments to msiexec
#...so it passes (/qn) which means run with no UI
S:\Druva\inSync-5.9-r51251.msi #/S /v/qn

#The call operator is necessary here since the directory has spaces in it
& "S:\Shoretel Communicator\setup.exe" #/S /v /qn

#keeps the window open for error checking
pause
