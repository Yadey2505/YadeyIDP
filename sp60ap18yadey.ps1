#Definimos el parametro y la variables

param(
    [Parameter(Mandatory=$true)]
    [string]$Programa
)

# Mostrar información sobre el programa que se va a ejecutar
Write-Host "Ejecutando el programa: $Programa"

# Verificar si el programa existe antes de intentar ejecutarlo
if (Get-Command $Programa) {

    
    $proceso = Start-Process -FilePath $Programa 
    
  # Si el programa no se encuentra, mostrar un mensaje de error
}
else {
    
    Write-Host "Error: No se puede encontrar el programa '$Programa'" 
    exit 
}
