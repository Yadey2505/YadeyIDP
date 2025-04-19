#!/bin/bash

# Menu principal
echo "Seleccione una opción"
echo "1. Loaded"
echo "2. Not-Found"
echo "3. Active"
echo "4. Inactive"
echo "5. Dead"
echo "6. Running"

#Leed opción del usuario
read -p "Opción (1-6): " opcion

# Asociar la elección 
case $opcion in
    1) estado="loaded" ;;
    2) estado="not-found" ;;
    3) estado="active" ;;
    4) estado="inactive" ;;
    5) estado="dead" ;;
    6) estado="running" ;;
    *) echo "Opción no válida."; exit 1 ;;
esac

echo
echo "Has seleccionado: $estado"


# Listar los servicios
systemctl list-units --type=service --state=$estado
