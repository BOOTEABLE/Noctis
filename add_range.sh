#!/bin/bash

# Solicita el rango de grupos
read -p "Ingrese el número inicial del grupo (ej: 1): " inicio
read -p "Ingrese el número final del grupo (ej: 10): " fin

# Verifica que add_grupo.sh existe y es ejecutable
if [ ! -x ./add_grupo.sh ]; then
    echo "❌ El script add_grupo.sh no se encuentra o no es ejecutable."
    exit 1
fi

for i in $(seq -f "%02g" $inicio $fin); do
    grupo="grupo$i"
    
    # Verifica si el grupo ya existe (carpeta home del grupo)
    if id "$grupo" &>/dev/null; then
        echo "⚠️  El grupo $grupo ya existe. Se omite."
    else
        echo "✅ Creando $grupo..."
        ./add_grupo.sh "$grupo"
    fi
done
