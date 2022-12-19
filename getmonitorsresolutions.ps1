Add-Type -AssemblyName System.Windows.Forms
$Monitors = [System.Windows.Forms.Screen]::AllScreens

foreach ($Monitor in $Monitors)
{
	$DeviceName = (($Monitor.DeviceName).replace("\", "")).replace(".", "")
	$Width = $Monitor.bounds.Width
	#$Height = $Monitor.bounds.Height
	Write-Host "$DeviceName - $Width"
}