echo -e "\e[1;33m1. Inserta números en el fichero\e[0m"
echo -e "\e[1;33m2. Borrar números del fichero\e[0m"

read opcion

case $opcion in
    1)
    echo "Introduce los números: "
    read numeros
    numeroesta=`grep -w $numeros numeros.txt`
    if [ "$numeroesta" = "$numeros" ]; then
        echo "El número ya existe dentro del fichero"
    else
        echo $numeros >> numeros.txt
        echo "Los números del fichero ordenados son: "
        cat numeros.txt | sort -n
        
    fi
    ;;
    2)
    echo "¿Qué número quieres borrar? "
    read borra
    grep -w $borra numeros.txt
    if [ $? -eq 0 ]; then
        grep -w -v $borra numeros.txt > temp
        mv temp numeros.txt
        echo "Número borrado"
    else
        echo "El número no está en el fichero"
    fi
    ;;
    *)
    echo "Opción incorrecta"
    ;;
esac

