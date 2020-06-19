# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#
# Install programs
#

# Dev tools
choco install microsoft-windows-terminal --confirm
choco install fiddler --confirm
choco install putty --confirm
choco install dotpeek --confirm
choco install diffmerge --confirm

choco install git --confirm
choco install poshgit --confirm

choco install visualstudiocode --confirm
#choco install sysinternals -y
#choco install curl
#choco install wireshark

# Browsers
choco install google-chrome-x64 --confirm

# Setup powershell to load my standard profile 
$onedriveFolder = (gci env:Userprofile).Value + "\Onedrive"
Add-Content -Path $Profile -Value ([Environment]::NewLine + "'. " + $onedriveFolder + "\dev\scripts\commonProfile.ps1'")
