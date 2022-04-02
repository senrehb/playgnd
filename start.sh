#!bin/bash
# Dauerschleife abfrage Sensor DHT22
for ((i=1; i<=1440; i++)); do
        echo
        echo "Sensorabfrage gestartet..."
        echo ""
        cd /home/pi/playgnd/
       python read-dht22.py
       IF NOT errorlevel 1 goto End
        echo "...OK."
        sleep 5
done
:End
echo
echo "Fehler !"
sleep 5
# End
