echo "Inserte un numero: "
read numero

echo "Inserte otro numero: "
read numero2

if [ $numero -le $numero2 ]; then
    expr $numero + $numero2
else
    expr $numero - $numero2
fi