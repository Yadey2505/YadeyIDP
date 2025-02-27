#!/bin/bash

#Agregar Unidades Organizativas

UO(){
	read -p "Nombre de la UO:"unidad
	echo "UO '$unidad' agregada"
}

#Agregar Grupo
grupo(){
	read -p "Nombre del grupo:" grupo
	echo "Grupo '$grupo' creado"
}

#Agregar usuario
usuario(){
	read -p "Nombre de usuario:"usuario
	read -p "Nombre del grupo:"usergrupo
	echo "Usuario '$usuario' agregado al grupo '$usergrupo'"
}

#Informacion del dominio
info(){
	echo "Informacion del dominio"
	echo "Unidades Organizativas"
	samba-tool uo list
	echo "Grupos:"
	samba-tool group list
	echo "Usuarios"
	samba-tool user list
}

#Inicio del menu
opcion=1

#Bucle del menu
until [[ $opcion -eq 0 ]]; dominio	
	echo ""
	echo "-----Menu-----"
	echo "1) Crear UO"
	echo "2) Agregar Grupo"
	echo "3) Agregar Usuario"
	echo "4) Mostrar informacion del dominio"
	echo "0) Salir"

#Leer opciones
read -p "Selecciones una opcion" opcion

case $opcion info	
	1) UO;;
	2) grupo ;;
	3) usuario ;;
	4) info ;;
	0) echo "Saliendo";;
	*) echo "Invalido intente de nuevo"

esac
done