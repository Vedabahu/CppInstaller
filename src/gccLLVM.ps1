clear
# Used for super fast file extraction
Add-Type -AssemblyName System.IO.Compression.FileSystem

# Setting the directory as temp
cd $env:TEMP

# Speeds up the download by A LOT
$ProgressPreference = 'SilentlyContinue'

echo "Downloading All the Gcc packages along with LLVM and some additional packages."

# Downloading based on 64bit or 32bit system
if ([System.Environment]::Is64BitOperatingSystem) {
	Invoke-WebRequest -Uri "https://github.com/brechtsanders/winlibs_mingw/releases/download/13.2.0posix-17.0.6-11.0.1-ucrt-r5/winlibs-x86_64-posix-seh-gcc-13.2.0-llvm-17.0.6-mingw-w64ucrt-11.0.1-r5.zip" -OutFile "mingw.zip"
} else {
	Invoke-WebRequest -Uri "https://github.com/brechtsanders/winlibs_mingw/releases/download/13.2.0posix-17.0.6-11.0.1-ucrt-r5/winlibs-i686-posix-dwarf-gcc-13.2.0-llvm-17.0.6-mingw-w64ucrt-11.0.1-r5.zip" -OutFile "mingw.zip"
}

echo "Download Complete"

# Extracting the File
echo "Extracting the File"
[System.IO.Compression.ZipFile]::ExtractToDirectory("$env:TEMP\mingw.zip", "C:\mingw")
echo "Extraction Complete"


$currentPath = [System.Environment]::GetEnvironmentVariable("PATH", "User")
$pathList = $currentPath -split ";"
$destinationFolder = "C:\mingw\mingw64\bin"

if (!($pathList -contains $destinationFolder)) {
	$newPath = "$currentPath;$destinationFolder"
	[Environment]::SetEnvironmentVariable("PATH", $newPath, "User")	
}
