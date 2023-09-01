# ps-portscan

This is a PowerShell script that allows you to check connectivity on a list of IP addresses and ports specified by the user. It supports CIDR notation and can check multiple subnets at once.

## Prerequisites

Make sure you have PowerShell installed on your system. This script has been tested on PowerShell 5.1.

## Usage

1. Clone this repository or download the `.\ps-portscan.ps1` file.

2. Open a terminal or command prompt.

3. Navigate to the directory where you saved the `.\ps-portscan.ps1` file.

4. Run the PowerShell script using the following command:
   ```
   powershell
   .\ps-portscan.ps1
   ```

5. Follow the instructions and type the IP address(es) and port(s) when prompted.

Example:
```
$ .\ps-portscan.ps1
$ 192.168.0.1 192.168.0.2 192.168.0.3
$ 22 23 80 443
```

