[CmdletBinding()]

param(
	[Parameter(Mandatory=$True, Position=1)]
	[string]$file,
	[Parameter(Mandatory=$True, Position=2)]
	[string]$buildNumber
)
$buildNumber = $buildNumber -replace '\.',','
Write-Output "Will apply $buildNumber to $file files"
(Get-Content $file) -replace '\d+,\d+,\d+,\d+', $buildNumber | Set-Content $file