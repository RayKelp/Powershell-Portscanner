# Powershell-Portscanner

### A quite simple interactive portscanner for powershell that supports lists and CIDR.

Usage: just right-click and click "Execute using Powershell".
Or double click if it's already executing with Powershell by default.

Command line: `./ps-portscan.ps1`.
Make sure you have the right permissions to execute it in your system.

(Newbies): You can copy and paste the code and save it in a `file.ps1`.

Just execute it and write type the IP address, or the list of IP address that
you'd want to verify for open ports. Or type the ip address in CIDR notation for
scanning subnets.

Don't forget to separate the IP addresses and the ports by **spaces**.
Example:
(IPs: `192.168.0.1 192.168.0.2 192.168.0.3`).
(Ports: `22 23 80 443`).

