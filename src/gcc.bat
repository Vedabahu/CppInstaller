@echo off

echo Starting Things!
rem Running the powershell script from Vedabahu's github gist
set "scriptURL=https://gist.github.com/Vedabahu/9e7e7bc4d71a7b6467fb64335003c42a/raw/1bb00b9f6fe2b0e20de2cf4da602b0f572d66501/gcc.ps1"

set "scriptPath=%TEMP%\gcc.ps1"

powershell -command "(New-Object System.Net.WebClient).DownloadFile('%scriptURL%', '%scriptPath%')"

powershell -ExecutionPolicy Bypass -File "%scriptPath%"

del "%scriptPath%"

echo Completed Things!!

pause