# Script to Discover and Monitor Printers with Zabbix

## What it does
Monitors the spool of all installed printers on Windows.

## Configuration
Copy `discover_printers.ps1` and `print_spool_count.ps1` to a folder of your choice and add the UserParameter in the Zabbix Agent configuration on the Windows machine where you want to monitor the printer spool.

```
UserParameter=printers.discovery,powershell -ExecutionPolicy Bypass -File "C:\Program Files\Zabbix Agent 2\scripts\discover_printers.ps1"
UserParameter=spool.print.count[*],powershell -ExecutionPolicy Bypass -File "C:\Program Files\Zabbix Agent 2\scripts\print_spool_count.ps1" "$1"
```

Import the template into Zabbix, wait for the discovery process and spool data collection.

## Compatibility
Tested on Windows Server 2012 and Zabbix 7.0.0.
