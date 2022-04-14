#!/bin/bash
# check exsit to open data
x="1"
if [ -f /home/pi/projekt/playgnd/test2.py ]
        then
                while [ $x -le 10 ]
                do
        echo
        echo "Sensorabfrage gestartet..."
        echo 
      # cd /home/pi/playgnd/
        python test2.py 22 4
        # // RM script
        sleep 60
        x=$(( $x + 1 ))
        done
        else
        echo
        echo " Fehler - Die Datei ist nicht vorhanden"
        echo
        fi
echo "The End"
