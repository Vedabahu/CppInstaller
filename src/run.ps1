# Download the compiled file and run it.
cd $env:TEMP

# Speeds up the download by A LOT
$ProgressPreference = 'SilentlyContinue'

Invoke-WebRequest -Uri "https://github.com/Vedabahu/CppInstaller/releases/download/v1.0.0/main.exe" -OutFile "main.exe"

.\main.exe
