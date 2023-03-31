echo "Dime una palabra"
read palabra
palabrareves=`echo $palabra | rev`

if [ $palabrareves = $palabra ]; then
    echo "La palabra $palabra es palíndroma"
else
    echo "LA palabra $palabra NO es palíndroma"

fi