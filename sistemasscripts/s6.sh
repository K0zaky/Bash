echo -e "\e[1;33m¡\e[1;32mA\e[1;31md\e[1;35mi\e[0;36mv\e[1;33mi\e[1;32mn\e[1;31ma e\e[1;35ml n\e[0;36mú\e[1;33mm\e[1;32me\e[1;31mr\e[1;35mo\e[0;36m!\e\e[0m"

num="$[ RANDOM%100 ]"

intentos=5

sleep 1

while [ $intentos -gt 0 ]; do
    echo -e "\e[1;35m¡Di un número!\e[0m"
    read respuesta

    if [ $respuesta -eq $num ]; then
    echo -e "\e[1;32m¡Ganador!\e[0m"
    exit 0

        elif [ $respuesta -lt $num ]; then
        echo -e "\e[1;31m¡ERROR!\e[0m"
        let intentos=$intentos-1
        echo -e "\e[1;33mPista: El número que buscas es mayor\e[0m"
        echo -e "\e[1;34mIntentos restantes: $intentos\e[0m"

        elif [ $respuesta -gt $num ]; then
        echo -e "\e[1;31m¡ERROR!\e[0m"
        let intentos=$intentos-1
        echo -e "\e[1;33mPista: El número que buscas es menor\e[0m"
        echo -e "\e[1;34mIntentos restantes: $intentos\e[0m"

    fi

done

echo -e "\e[1;31m¡Has perdido!\e[0m"
echo -e "\e[1;31mEl número era:\e[0m \e[1;33m$num\e[0m"