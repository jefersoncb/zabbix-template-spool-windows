$printers = Get-Printer | Select-Object Name

$lld = @{ "data" = @() }

foreach ($printer in $printers) {
    $lld["data"] += @{ "{#PRINTERNAME}" = $printer.Name }
}

$lld | ConvertTo-Json -Compress
