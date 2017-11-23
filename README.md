![alt tag](https://github.com/)

## ABOUT:
HackGun-IG is an automated scanner that can be used during a penetration test to enumerate and scan for vulnerabilities. 

## DEMO VIDEO:
[![HackGun-IG Demo] coming soon...

## FEATURES:
* Automatically collects basic recon (ie. whois, ping, DNS, etc.)
* Automatically launches Google hacking queries against a target domain
* Automatically enumerates open ports via NMap port scanning
* Automatically brute forces sub-domains, gathers DNS info and checks for zone transfers
* Automatically checks for sub-domain hijacking
* Automatically runs targeted NMap scripts against open ports
* Automatically runs targeted Metasploit scan and exploit modules
* Automatically scans all web applications for common vulnerabilities
* Automatically brute forces ALL open services
* Automatically test for anonymous FTP access
* Automatically runs WPScan, Arachni and Nikto for all web services
* Automatically enumerates NFS shares
* Automatically test for anonymous LDAP access
* Automatically enumerate SSL/TLS ciphers, protocols and vulnerabilities
* Automatically enumerate SNMP community strings, services and users
* Automatically list SMB users and shares, check for NULL sessions and exploit MS08-067
* Automatically exploit vulnerable JBoss, Java RMI and Tomcat servers
* Automatically tests for open X11 servers
* Auto-pwn added for Metasploitable, ShellShock, MS08-067, Default Tomcat Creds
* Performs high level enumeration of multiple hosts and subnets
* Automatically integrates with Metasploit Pro, MSFConsole and Zenmap for reporting
* Automatically gathers screenshots of all web sites
* Create individual workspaces to store all scan output

## KALI LINUX INSTALL:
```
./install.sh
```

## USAGE:
```
hgig <target> <report>
hgig <target> stealth <report>
hgig <CIDR> discover
hgig <target> port <portnum> 
hgig <target> fullportonly <portnum>
hgig <target> web <report>
hgig <target> webporthttp <port>
hgig <target> webporthttps <port>
hgig <target> nobrute <report>
hgig <targets.txt> airstrike <report>
hgig <targets.txt> nuke <report>
hgig loot
```

### MODES:
* **REPORT:** Outputs all results to text in the loot directory for later reference. To enable reporting, append 'report' to any sniper mode or command.
* **STEALTH:** Quickly enumerate single targets using mostly non-intrusive scans to avoid WAF/IPS blocking
* **DISCOVER:** Parses all hosts on a subnet/CIDR (ie. 192.168.0.0/16) and initiates a sniper scan against each host. Useful for internal network scans.
* **PORT:** Scans a specific port for vulnerabilities. Reporting is not currently available in this mode.
* **FULLPORTONLY:** Performs a full detailed port scan and saves results to XML.
* **WEB:** Adds full automatic web application scans to the results (port 80/tcp & 443/tcp only). Ideal for web applications but may increase scan time significantly.   
* **WEBPORTHTTP:** Launches a full HTTP web application scan against a specific host and port.
* **WEBPORTHTTPS:** Launches a full HTTPS web application scan against a specific host and port.
* **NOBRUTE:** Launches a full scan against a target host/domain without brute forcing services.
* **AIRSTRIKE:** Quickly enumerates open ports/services on multiple hosts and performs basic fingerprinting. To use, specify the full location of the file which contains all hosts, IP's that need to be scanned and run ./hgig /full/path/to/targets.txt airstrike to begin scanning.
* **NUKE:** Launch full audit of multiple hosts specified in text file of choice. Usage example: ./hgig /pentest/loot/targets.txt nuke. 
* **LOOT:** Automatically organizes and displays loot folder in your browser and opens Metasploit Pro and Zenmap GUI with all port scan results. To run, type 'hgig loot'.



