param([string]$PrinterName)

$jobs = Get-PrintJob -PrinterName $PrinterName -ErrorAction SilentlyContinue | Measure-Object | Select-Object -ExpandProperty Count
Write-Output $jobs