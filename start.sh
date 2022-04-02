#!/bin/bash
# check exsit to open data
if [ -f /home/pi/playgnd/read-dht21.py ]
        then
        echo "Datei vorhanden"
        echo
        echo "Sensorabfrage gestartet..."
        echo 
        goto dht22read
        else
        echo " Fehler - Datei nicht vorhanden"
        goto ErrTxT
fi
:dht22read
       # cd /home/pi/playgnd/
        python read-dht22.py
        sleep 5
        goto End1
:ErrTxT
echo "Ende.....Fehler !"
sleep 5
goto End2
:End1
echo "The End"
:End2
