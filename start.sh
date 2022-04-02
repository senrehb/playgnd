#!/bin/bash
# Abfrage Sensor DHT22
if [ $1 = 1 ]
        then
        echo Fehler
        else
        echo
        echo "Sensorabfrage gestartet..."
        echo ""
       # cd /home/pi/playgnd/
        python read-dht22.py
        sleep 5
fi
#:End
echo
echo "Ende.....Fehler !"
sleep 5
exit 1
# End
