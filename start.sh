#!/bin/bash
# check exsit to open data
if [ -f /home/pi/playgnd/read-dht21.py ]
        then
        echo "checking Data..."
        echo "                ... OK"
        echo
        echo "Sensorabfrage gestartet..."
        echo 
      # cd /home/pi/playgnd/
        python read-dht22.py
        # // RM script
                if [$1 = 1]
                then
                echo
                echo "Fehler Sensorabfrage"
                echo
                sleep 5
                else
                echo
                echo "Sensor reading..."
                echo
                echo "ready"
                sleep 5
                fi
        else
        echo
        echo " Fehler - Die Datei ist nicht vorhanden"
        echo
        fi
echo "The End"
