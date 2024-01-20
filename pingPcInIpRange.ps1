$compIp = 10..254 | ForEach-Object {"172.30.30.$_"}
    
foreach($comp in $compIp){
    $testConn = Test-Connection -ComputerName $comp -Quiet -Count 1 -ErrorAction SilentlyContinue 
    
    if ($testConn) {
        Write-host "$comp is active"
        "$comp is active" | Out-File '~/Desktop/test-connection.txt' -Append
    }
    else {
        Write-Host "$comp is offline"
        "$comp is offline" | Out-File '~/Desktop/test-connection.txt' -Append
    }
}