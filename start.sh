#!/bin/bash
# check exsit to open data
if [ -f /home/pi/projekt/playgnd/read-dht22.py ]
        then
        echo
        echo "Sensorabfrage gestartet..."
        echo 
      # cd /home/pi/playgnd/
        python read-dht22.py 22 4
        # // RM script
        else
        echo
        echo " Fehler - Die Datei ist nicht vorhanden"
        echo
        fi
echo "The End"
