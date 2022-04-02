import Adafruit_DHT
import time
#Sensortyp und GPIO festlegen
sensor = Adafruit_DHT.DHT22
gpio = 4
# Daten auslesen
humidity, temperature = Adafruit_DHT.read_retry(sensor, gpio)
# Ausgabe
print 'Temperatur(C): {0:0.1f} Luftfeuchtigkeit(%): {1:0.1f}'.format(temperature,humidity)
# Ausgabe Datei
# lokale Datein oeffnen
f = open('sensor1.log', 'a')
# Werte formatieren
valueDT = time.strftime("%d.%m.%Y;%H:%M:%S; ")
value1 =  'Temp: {0:0.1f} ; Luftfeuchte: {1:0.1f}'.format(temperature,humidity)
value2= '\n'
# Werte in in Variable schreiben
s0 = str(valueDT)
s1 = str(value1)
s2 = str(value2)
# Variablen zusamensetzen
s = s0 + s1 + s2
# Ausgabe in geöffnete Datei
f.write(s)
# Ende
