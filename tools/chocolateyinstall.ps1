
$ErrorActionPreference = 'Stop';

$packageName        = 'made2010'
$scriptPath         = $(Split-Path $MyInvocation.MyCommand.Path)
$url_local          = "https://download.microsoft.com/download/2/4/3/24375141-E08D-4803-AB0E-10F2E3A07AAA/AccessDatabaseEngine.exe"
$url_local64        = "https://download.microsoft.com/download/2/4/3/24375141-E08D-4803-AB0E-10F2E3A07AAA/AccessDatabaseEngine_X64.exe"
$checksum           = "2b94903a1b87ea55f4bc28457be5c602c6194de7e79b8e22d7b723d5ef351587"
$checksum64         = "0c41d59a27984fd3032149a2f065841de9609dd3f756b3c3ba4836f02e7ac7c0"
$killexec           = 0
$killexecprocess    = ""

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "/quiet /norestart"
  validExitCodes= @(0, 3010, 1603, 1641)
  url           = $url_local
  url64bit      = $url_local64
  checksumType  = 'sha256'
  checksumType64= 'sha256'
  checksum      = $checksum
  checksum64    = $checksum64
}

# Should we kill some exec ?
if ($killexec) {
  Stop-Process -processname $killexecprocess -force
  }

  Install-ChocolateyPackage @packageArgs














