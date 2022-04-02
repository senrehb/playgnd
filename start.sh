#!/bin/bash
# Abfrage Sensor DHT22
if Errorlevel 1
        echo "Fehler"
        goto End
        else
        goto Read
        fi
:Read  
        for ((i=1; i<=10; i++)); do
        echo
        echo "Sensorabfrage gestartet..."
        echo ""
       # cd /home/pi/playgnd/
       python read-dht22.py
       IF Errorlevel 1 goto End
        echo "...OK."
        sleep 5
done
exit 0
:End
echo
echo "Fehler !"
sleep 5
exit 1
# End
