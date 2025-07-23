$RTV = "D:\Games\Steam\jka\GameData\RTV"
$script = "rtv_.ps1"
$self = "rtv_start.ps1"

Set-Location $RTV

function startServer() {
	Write-Host "Starting RTV."
	Start-Process powershell.exe -ArgumentList "-File $RTV\$script" -NoNewWindow
	$global:server = Get-WmiObject Win32_Process -Filter "Name='powershell.exe' AND CommandLine LIKE '%$script%'"
	$global:process = Get-Process | Where-Object {$_.ID -eq $server.ProcessID}
}

# Abort script if another instance is already running
if ((Get-WmiObject Win32_Process -Filter "Name='powershell.exe' AND CommandLine LIKE '%$self%'").count -gt 1) {
	exit
}

# Start RTV if it isn't running forever
while ($true) {
	while (!($process)) {
		# Try to start the RTV if not running
		startServer
		start-sleep -s 10
	}
	if ($process) {
		# Wait for RTV to stop
		$process.WaitForExit()
		Write-Host "RTV stopped."
		
		# Update $process state (should now be false)
		start-sleep -s 2
		$global:process = Get-Process | Where-Object {$_.ID -eq $server.ProcessID}		
	}
}