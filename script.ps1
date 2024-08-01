# Create a temporary directory
$tempFolder = Join-Path $env:TEMP "WinGetInstall"
New-Item -ItemType Directory -Force -Path $tempFolder

# Download the latest version of Winget
$latestWingetMsixBundleUri = "https://aka.ms/getwinget"
$latestWingetMsixBundle = Join-Path $tempFolder "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
Invoke-WebRequest -Uri $latestWingetMsixBundleUri -OutFile $latestWingetMsixBundle

# Install Winget
Add-AppxPackage -Path $latestWingetMsixBundle

# Clean up
Remove-Item $tempFolder -Recurse

pause
winget install -e --id Opera.Opera Discord.Discord VideoLAN.VLC Foxit.FoxitReader TheDocumentFoundation.LibreOffice 7zip.7zip --accept-package-agreements --accept-source-agreements
pause
Install-Module PSWindowsUpdate -Force
pause
Get-WindowsUpdate
pause
Install-WindowsUpdate -AcceptAll
pause
