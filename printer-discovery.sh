#Created by: Paulo Henrique de Andrade Vaz
#Creation Date: 24/10/2016
#Update Date: 24/10/2016
#Version: 1.0
#This script automatically creates items for print spooling monitoring by ZABBIX of each printer installed on HP-UX system.

i=1
linha=$(lpstat -a | awk '{print $1}' | wc -l)
i=1
printf '{"data":['
while test $i -le $linha
do
        printer=$(lpstat -a | awk '{print $1}' | sed -n $i' p;')
        i="$((i+1))"
        printf '{"{#PRINTNAME}":"'
        printf $printer'"}'
        if test $i -le "$((linha))"
        then
        printf ','
        fi
done
printf ']}'
