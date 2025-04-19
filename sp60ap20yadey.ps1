#Definicion de umbral
%umbralMb =200

#Obtener los procesos
$procesos = Get-Process

#Recorrer los procesos
    foreach ($proceso in $procesos) {
         #Comparar el consumo
             $memoria = $proceso.WorkingSet / 1MB
              

 # Muestra el proceso que va a finalizar
        if ($memoria -gt $umbralMb){
            Write-Host "Finalizando: $($proceso.Name) que consume $([math]::round($memoriaEnMB, 2)) MB"
          

# Finaliza el proceso
     Stop-Process -Id $proceso.Id -Force
    }
}