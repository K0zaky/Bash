echo "Dime un número"
read numero

divisores=0

for i in `seq $numero`

do

    if [ `expr $numero % $i` -eq 0 ];then

        let divisores+=1

 

        if [ $divisores -gt 2 ];then

            break

        fi

    fi

done

if [ $divisores -eq 2 ];then

    echo "El número $numero es primo."

else

    echo "El número $numero no es primo."

fi
