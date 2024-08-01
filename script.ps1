winget install -e --id Opera.Opera Discord.Discord VideoLAN.VLC Foxit.FoxitReader TheDocumentFoundation.LibreOffice 7zip.7zip --accept-package-agreements --accept-source-agreements
Install-Module PSWindowsUpdate -Force
Get-WindowsUpdate
Install-WindowsUpdate -AcceptAll
