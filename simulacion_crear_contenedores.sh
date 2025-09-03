#!/bin/bash

# Script para simular la creación de contenedores
# Autor: Isai Molina
# Fecha: Septiembre 2025

CARNET="202100179"

# Generar número aleatorio entre 1 y 4
num_archivos=$((RANDOM % 4 + 1))

echo "=== Simulación de Creación de Contenedores ==="
echo "Se crearán $num_archivos contenedores simulados"
echo "Carnet: $CARNET"
echo "Directorio actual: $(pwd)"
echo ""

# Array de nombres aleatorios para los contenedores
nombres_aleatorios=("alpha" "beta" "gamma" "delta" "epsilon" "zeta" "theta" "sigma" "omega" "lambda")

# Crear los archivos
for i in $(seq 1 $num_archivos); do
    # Seleccionar nombre aleatorio del array
    indice_aleatorio=$((RANDOM % ${#nombres_aleatorios[@]}))
    nombre_aleatorio=${nombres_aleatorios[$indice_aleatorio]}
    
    # Crear nombre del archivo
    nombre_archivo="contenedor_${CARNET}_${nombre_aleatorio}.txt"
    
    # Crear el archivo con su contenido
    echo "$nombre_archivo" > "$nombre_archivo"
    
    # Mostrar información del archivo creado
    echo "✓ Contenedor creado: $nombre_archivo"
    echo "  - Tamaño: $(wc -c < "$nombre_archivo") bytes"
    echo "  - Contenido: $(cat "$nombre_archivo")"
    echo ""
done

echo "=== Resumen final ==="
echo "Archivos creados en este directorio:"
ls -la contenedor_${CARNET}_*.txt 2>/dev/null || echo "No se encontraron archivos de contenedores"

echo ""
echo "Total de archivos de contenedores: $(ls contenedor_${CARNET}_*.txt 2>/dev/null | wc -l)"