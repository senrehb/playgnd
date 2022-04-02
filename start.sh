#!/bin/bash
# check exsit to open data
if [ -f /home/pi/playgnd/read-dht22.py ]
        then
        echo "... Datei-Prüfung erfolgreich"
        echo
        echo "Sensorabfrage gestartet..."
        echo 
      # cd /home/pi/playgnd/
        python read-dht22.py
        # // RM script
        echo
        echo "Sensorabfrage beendet"
        echo
        sleep 5
        else
        echo
        echo " Fehler - Die Datei ist nicht vorhanden"
        echo
fi
echo "The End"
