echo -e "\e[1;31mBillete de tren calculator 3000\e[0m"

echo "¿El trayecto es de ida y vuelta? [s/n]"

read trayecto

precio=30

if [ $trayecto == "s" ]; then
    descuento=$(echo "scale=2;($precio*2)*00.20" | bc)
    idavuelta=$(echo "scale=2; ($precio*2)-$descuento" | bc)
    echo "Se aplicará el descuento del 20%"
    echo "Su billete serán $idavuelta€"

elif [ $trayecto == "n" ]; then
    echo "Serán $precio€"
fi