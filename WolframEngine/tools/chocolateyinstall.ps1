$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://files.wolframcdn.com/packages/winget/14.1.0.0/WolframEngine_14.1.0_WIN.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  checksum      = '2d18b111ac6aa08f73cdffccad9254a1'
  checksumType  = 'md5'
  silentArgs    = "/quiet /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs