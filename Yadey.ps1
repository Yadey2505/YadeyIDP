# Declaración de variables
$usuario = Read-Host "Nombre de usuario"
$contraseña = Read-Host "Introduzca la contraseña de usuario" -AsSecureString
$descripcion = Read-Host "Descripcion"

# Verificar si el grupo existe
do {
    $grupo = Read-Host "Grupo al que pertenece"
    $grupoExiste = Get-LocalGroup -Name $grupo -ErrorAction SilentlyContinue

    if (-not $grupoExiste) {
        Write-Host "El grupo '$grupo' no existe. Por favor, ingrese otro nombre."
    }
} while (-not $grupoExiste)

# Creación del usuario con su contraseña y descripción
New-LocalUser $usuario -Password $contraseña -Description $descripcion

# Añadir el usuario al grupo
Add-LocalGroupMember -Group $grupo -Member $usuario

# Comprobación
Write-Host "Miembros actuales del grupo '$grupo':"
Get-LocalGroupMember -Group $grupo
