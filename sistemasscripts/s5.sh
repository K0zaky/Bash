echo "Elige una opción"
echo "1. Sumar"
echo "2. Restar"
echo "3. Multiplicar"
echo "4. Dividir"
echo "5. Elevar"

read opcion

if [ $opcion -eq 1 ]; then
    echo "Introduce un número: "
    read num1
    echo "Introduce otro número: "
    read num2
    let suma=$num1+$num2
    echo "$num1 + $num2 = $suma"

    elif [ $opcion -eq 2 ]; then
    echo "Introduce un número: "
    read num1
    echo "Introduce otro número: "
    read num2
    let resta=$num1-$num2
    echo "$num1 - $num2 = $resta"

    elif [ $opcion -eq 3 ]; then
    echo "Introduce un número: "
    read num1
    echo "Introduce otro número: "
    read num2
    let multi=$num1*$num2
    echo "$num1 * $num2 = $multi"

    elif [ $opcion -eq 4 ]; then
    echo "Introduce un número: "
    read num1
    echo "Introduce otro número: "
    read num2
    let divi=$num1/$num2
    echo "$num1 / $num2 = $divi"

    elif [ $opcion -eq 5 ]; then
    echo "Introduce un número: "
    read num1
    echo "Introduce otro número: "
    read num2
    let elevar=$num1**$num2
    echo "$num1^$num2 = $elevar"
    
    elif [ $opcion -gt 5 ]; then
    echo "ERROR: Opción inexistente"

    elif [ $opcion -lt 1 ]; then
    echo "ERROR: Opción inexistente"   
fi