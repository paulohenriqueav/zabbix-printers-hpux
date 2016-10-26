# Zabbix-printers-hpux
# Zabbix Version: 2.4+
# HPUX Version: 11.31
#This script sets an age for the print job through the lpstat command to each printer that was discovered in the HP-UX system.

imp_queue=$(lpstat -i -o | grep $1 | awk 'NR==1{ print $7 }' | sed 's/://g')

if [[ -z "$imp_queue" ]] then

        imp_queue=0
        echo $imp_queue
else
        date_now=$(date +%H%M)
        imp_age="$(($date_now - $imp_queue))"
        echo $imp_age
fi
