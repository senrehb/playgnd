#!/bin/bash
# check exsit to open data
if [ -f /home/pi/playgnd/read-dht21.py ]
        then
        echo "Datei vorhanden"
        echo
        echo "Sensorabfrage gestartet..."
        echo 
      # cd /home/pi/playgnd/
        python read-dht22.py
        sleep 5
        else
        echo " Fehler - Datei nicht vorhanden"
fi
echo "The End"
