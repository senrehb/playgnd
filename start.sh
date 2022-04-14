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
                if [ $1 = '1' ]
                then
               echo
                echo "Fehler Sensorabfrage"
                echo
                sleep 5
                else
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
