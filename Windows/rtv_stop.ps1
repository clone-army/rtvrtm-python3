$script = "rtv_.ps1"
$script_start = "rtv_start.ps1"

$server_start = Get-WmiObject Win32_Process -Filter "Name='powershell.exe' AND CommandLine LIKE '%$script_start%'"


if ($server_start) {
	taskkill /t /f /pid $server_start.ProcessID
	Write-Host "RTV stopped."
} else {
	$server = Get-WmiObject Win32_Process -Filter "Name='powershell.exe' AND CommandLine LIKE '%$script%'"
	if ($server) {
		taskkill /t /f /pid $server.ProcessID
		Write-Host "RTV stopped."
	} else {
		Write-Host "No RTV running."
	}
}