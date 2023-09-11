# ps-portscan

This is a PowerShell script that allows you to check connectivity on a list of IP addresses and ports specified by the user. It supports CIDR notation and can check multiple subnets at once.

![image](https://github.com/ManoKelpo/Powershell-Portscanner/assets/67763292/c78dbc45-f582-4ea5-98dd-fb1f43b62e5e)

![image](https://github.com/ManoKelpo/Powershell-Portscanner/assets/67763292/704069ff-a84e-4417-84f4-a7c87bd1a6c7)

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

5. Follow the instructions in the console to enter the IPs and ports you want to check.

The script will start the verification and display the connectivity status for each combination of IP and port.
After the verification is complete, it will wait for you to press a key to exit.

## Examples
Here are some examples of how you can use the script:

Check connectivity for a single IP and multiple ports.
Check connectivity for multiple IPs and a single port.
Use CIDR notation to check multiple subnets in a single run.
```
.\ps-portscan.ps1
IPs: 192.168.0.1 192.168.0.2 192.168.0.3
Ports: 22 23 80 443
```




## Contribution
Feel free to contribute to this project. You can submit issues, improvements, or feature requests. We are open to collaborations.

## License
This project is licensed under the MIT [LICENSE](LICENSE.txt)
.

Enjoy! If you have any questions or issues, feel free to create an issue in this repository.

