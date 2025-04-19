#Obtenemos los servicios
$servicios = Get-Service

#Total de servicios
$totalserv = $servicios.Count

#Total en Running
$running = ($servicios | Where-Object Status -EQ "Running").count

#Total en Stop
$stop = ($servicios | Where-Object Status -EQ "Stopped").count

Write-Host "Total de servicios: $totalserv"
Write-Host "Total de en ejecución: $running"
Write-Host "Total de parados: $stop"