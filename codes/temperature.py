#Comprobar que sirve el sensor de Temperatura (LM35)

import machine
import utime

# Configuración del sensor LM35 en el pin GP26 (ADC0)
sensor = machine.ADC(26)
CONVERSION_FACTOR = 3.3 / 65535  # Conversión ADC a Voltios

# Función para leer y convertir la temperatura
def leer_temperatura():
    lectura = sensor.read_u16()  # Leer ADC (0-65535)
    voltaje = lectura * CONVERSION_FACTOR  # Convertir a Voltios
    temperatura = (voltaje * 1000) / 10  # Convertir a °C
    return round(temperatura, 2)

# Bucle infinito para leer el sensor cada 2 segundos
while True:
    temp = leer_temperatura()
    print(f"Temperatura: {temp}°C")
    utime.sleep(2)  # Esperar 2 segundos antes de la siguiente lectura
