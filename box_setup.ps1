# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#
# Install programs
#

# Dev tools
choco install fiddler -y
choco install putty -y
choco install sublimetext3 -y
choco install dotpeek -y
choco install diffmerge -y

# Console
choco install cmder -y

choco install git -y
choco install poshgit -y

# Productivity
choco install f.lux -y

choco install visualstudiocode -y
#choco install sysinternals -y
#choco install curl
#choco install wireshark

# Browsers
choco install google-chrome-x64 -y
choco install firefox -y

# Setup powershell to load my standard profile 
$onedriveFolder = (gci env:Userprofile).Value + "\Onedrive"
Add-Content -Path $Profile -Value ([Environment]::NewLine + "'. " + $onedriveFolder + "\dev\scripts\commonProfile.ps1'")
