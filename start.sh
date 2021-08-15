#!bin/bash
# Dauerschleife abfrage
for ((i=1; i<=1440; i++)); do
        echo
        echo "Sensorabfrage gestartet..."
        echo ""
# Verzeichnis Script
#        cd /home/pi/
 #       python read-dht22.py
        echo "...OK."
        sleep 1
done
# End
