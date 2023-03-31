echo "Inserte un numero: "
read numero

if [ -z "$numero" ]; then
    echo "Tienes que introducir un número para que se muestre su tabla de multiplicar"

else
    for  i in {0..10}; do 
        let tabla=$numero*$i
        echo "$numero * $i = $tabla"

    done
fi