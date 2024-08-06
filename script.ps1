powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0

powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0

powercfg /hibernate off


# Set execution policy and security protocol
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

# Install Chocolatey silently
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Refresh environment variables
refreshenv

# Install packages silently
choco install opera vlc foxitreader libreoffice-fresh 7zip -y --ignore-checksums


Install-Module PSWindowsUpdate -Force
Get-WindowsUpdate
Install-WindowsUpdate -AcceptAll
