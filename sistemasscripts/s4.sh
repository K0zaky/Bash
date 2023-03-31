echo "Introduce un fichero o ruta a un fichero"
read fichero

if test -f "$fichero"; then
echo "Borrando ficheros..."
    sleep 1
    rm -rf $fichero
    echo "Ficheros borrados"

else
    echo "El fichero no existe"
fi