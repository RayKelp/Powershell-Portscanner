# Copyright 2023 Rayan Araujo.

Write-Host ""
Write-Host " Insert an IP or a list of IP addresses you'd like to scan."
Write-Host " Separe them by space (Ex: 192.168.1.1 192.168.1.2 192.168.1.3)"
Write-Host " Then insert the ports you want you check, also separated by space."
Write-Host ""
$ipInput = (Read-Host "IPs")
$ports = (Read-Host "Ports") -Split ' '

# If CIDR, then calculate the number of hosts
if ($ipInput -match '/')
{
	$ip, $cidr = $ipInput -split '/'
	# Calcular quantidade de hosts baseado no cidr	
	$subnetSize = [math]::Pow(2, (32 - [int]$cidr)) - 2 # Subtrai 2 hosts - endereco da rede e endereço de breadcast

	# Monta lista com todos os hosts da sub-rede
	$ips = 1..$subnetSize | Foreach-Object{ # A quantidade de IPs  será de 1 até o valor de subnetSize
		$ipArray = $ip.Split('.')
		$lastByte = [int]$ipArray[3] + $_
		$ipArray[3] = $lastByte
		$ipArray -join '.'
	}
	clear
	Write-Host "Scanning ""$subnetSize"" hosts in the IP ""$ip"" for the following ports: ""$ports"""
}
# If not CIDR, just separe the ips by spaces.
else
{
	$ips = $ipInput -Split ' '
	clear
	Write-Host "Scanning ""$ips"" for the ports ""$ports"""
}

# Start scan
Write-Host ""
Write-Host ""
Write-Host "-----------------------Scanning...-------------------------------"
Write-Host ""
Write-Host ""
Write-Host ""

$OriginalProgressPreference = $Global:ProgressPreference
$Global:ProgressPreference = 'SilentlyContinue'


foreach ($ip in $ips)
{
	Write-Host "$ip`:"
	foreach ($p in $ports)
	{
		$result = Test-NetConnection -ComputerName $ip -Port $p -WarningAction SilentlyContinue -InformationLevel Quiet
		
		if($result -eq "True") {Write-Host "      $p - OK"}

		else{Write-Host "      $p - Fail"}
    
	}
    Write-Host ""
}

Write-Host ""
Write-Host ""
Write-host "Done."
Write-Host ""
pause
