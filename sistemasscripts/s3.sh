echo "Introduce un fichero o ruta a un fichero"
read fichero


if test -f "$fichero"; then
    echo "Otorgando permisos..."
    sleep 1
    chmod +x $fichero
    echo "Permisos otorgados"

else
    echo "El fichero no existe"
fi