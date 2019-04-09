
i=1

while [ $i -le 10 ]
do
    if  (($i%2 == 0)); then
        mkdir even$i
        chmod 764 even$i
    else
        mkdir odd$i
        chmod 554 odd$i
    fi
    ((i++))
done