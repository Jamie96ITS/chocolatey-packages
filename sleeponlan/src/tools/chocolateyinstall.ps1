$ErrorActionPreference = 'Stop';
$packageName= 'sleeponlan'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.ireksoftware.com/SleepOnLan/SleepOnLan.zip'
$packageArgszip = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '0DD5034C29628738077C9D1ECDAB5B537CED1F86C60E92B0E9DB9C00F1D2F48B'
  checksumType  = 'sha256'
  validExitCodes= @(0)
}
Install-ChocolateyZipPackage @packageArgszip