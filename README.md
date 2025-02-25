# 🌡️ Sistema de Monitoreo de Temperatura IoT con Raspberry Pi Pico W - WH

## 📖 Descripción del Proyecto
Este proyecto demuestra un sistema de monitoreo de temperatura basado en IoT utilizando una Raspberry Pi Pico W y un sensor de temperatura LM35. El sistema captura datos de temperatura en tiempo real, los sube a la nube mediante ThingSpeak y realiza análisis de datos con MathWorks. Se generan alertas si la temperatura supera un umbral predefinido.

## 🎯 Objetivos del Proyecto
1. **Monitoreo de Temperatura:** Leer continuamente los datos de temperatura del sensor LM35.
2. **Carga de Datos en la Nube:** Enviar lecturas de temperatura a ThingSpeak cada 180 segundos.
3. **Análisis de Datos:** Calcular el promedio de las últimas 10 lecturas utilizando MathWorks.
4. **Alertas:** Generar una alerta si la temperatura supera los 35°C.

## 🛠️ Requisitos de Hardware
- Raspberry Pi Pico W
- Sensor de Temperatura LM35
- Protoboard y cables de conexión
- Cable USB para alimentación y programación

## 🔌 Conexión del Circuito
| Pin del LM35 | Pin de la Raspberry Pi Pico W |
|-------------|-------------------------------|
| VCC         | VBUS (Pin 40, 5V)             |
| GND         | GND                           |
| VOUT (Señal)| GP26 (ADC0)                   |

## 💻 Requisitos de Software
- Firmware MicroPython para Raspberry Pi Pico W
- Thonny IDE (o cualquier IDE compatible con MicroPython)
- Cuenta en ThingSpeak

## 🚀 Instalación y Configuración
1. **Preparar la Pico W:**
   - Flashea el firmware de MicroPython en la Raspberry Pi Pico W.

2. **Clonar el Repositorio:**
```bash
git clone https://github.com/yourusername/iot-temperature-monitoring.git
cd iot-temperature-monitoring
