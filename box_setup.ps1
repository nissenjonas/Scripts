 # Create and register Chocolatey install dir
# $chocoDir = $env:HomeDrive + "\Utils\Chocolatey"
# [Environment]::SetEnvironmentVariable("ChocolateyInstall", $chocoDir, "Machine")
# $env:ChocolateyInstall = $chocoDir # Ensures the variable is set for the current process
# md $env:ChocolateyInstall

# Install Chocolatey
Set-ExecutionPolicy RemoteSigned -Force
(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1

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
choco install console2 -y
choco install jump-location -y

choco install git -y
#TODO setup git.config
# git config --global user.name ""
# git config --global user.email ""
choco install poshgit -y

# Productivity
choco install f.lux -y

#choco install atom -y
#choco install sysinternals -y
#choco install ruby
#choco install nodejs
#choco install npm
#choco install curl
#choco install scriptcs
#choco install wireshark
#choco install sourcetree

# Browsers
choco install google-chrome-x64 -y
choco install firefox -y

# Setup powershell to load my standard profile 
$onedriveFolder = (gci env:Userprofile).Value + "\Onedrive"
Add-Content -Path $Profile -Value ([Environment]::NewLine + "'. " + $onedriveFolder + "\dev\scripts\commonProfile.ps1'")
