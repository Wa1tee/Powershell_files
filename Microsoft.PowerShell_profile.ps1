
try { $null = gcm pshazz -ea stop; pshazz init 'default' } catch { }

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


if ($host.Name -eq 'ConsoleHost')
{
  Import-Module PSReadLine
}

if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }


Import-Module posh-git
#Start-SshAgent
#Add-SshKey (Resolve-Path ~\.ssh\github_rsa)

Import-Module oh-my-posh
Set-Theme agnoster-edit


