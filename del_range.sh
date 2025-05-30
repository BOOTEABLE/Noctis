#!/bin/bash

# Ruta absoluta al script de eliminación individual
DEL_SCRIPT="./del_group.sh"

# Verificación del script de eliminación
if [ ! -f "$DEL_SCRIPT" ]; then
    echo "❌ No se encontró el script de eliminación: $DEL_SCRIPT"
    exit 1
fi

# Solicitar rango
read -p "🔢 Ingresa el número inicial del grupo (ej. 1 para grupo01): " START
read -p "🔢 Ingresa el número final del grupo (ej. 5 para grupo05): " END

# Validar números
if ! [[ "$START" =~ ^[0-9]+$ && "$END" =~ ^[0-9]+$ && "$START" -le "$END" ]]; then
    echo "❌ Rango inválido. Asegúrate de ingresar números válidos y que el inicio sea menor o igual al final."
    exit 1
fi

# Bucle de eliminación
for ((i=START; i<=END; i++)); do
    GRUPO=$(printf "grupo%02d" "$i")
    echo -e "\n⚠️ Eliminando $GRUPO..."
    echo "$GRUPO" | bash "$DEL_SCRIPT"
done

echo -e "\n✅ Todos los grupos del rango grupo$(printf "%02d" "$START") a grupo$(printf "%02d" "$END") fueron procesados."
