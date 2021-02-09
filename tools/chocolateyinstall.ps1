
$ErrorActionPreference = 'Stop';

$packageName        = 'made2010'
$scriptPath         = $(Split-Path $MyInvocation.MyCommand.Path)
$url_local          = "https://download.microsoft.com/download/2/4/3/24375141-E08D-4803-AB0E-10F2E3A07AAA/AccessDatabaseEngine.exe"
$url_local64        = "https://download.microsoft.com/download/2/4/3/24375141-E08D-4803-AB0E-10F2E3A07AAA/AccessDatabaseEngine_X64.exe"
$checksum           = "86fecfce83469b3f40ee93e0b54f433209c2bf5626d7f475761024e3f2d4a324"
$checksum64         = "15e5151bde13aa6756b7d0c74db5831932559fc4a60d1f7a43ed1f44e8102558"
$killexec           = 0
$killexecprocess    = ""

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "/quiet /norestart REBOOT=ReallySuppress"
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














