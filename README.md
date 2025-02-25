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
   - Flashea el firmware de MicroPython en la Raspberry Pi Pico W siguiendo la documentación oficial.

2. **Configurar el Entorno:**
   - Instalar Thonny IDE.
   - Instalar el firmware de MicroPython en la Raspberry Pi Pico W.

3. **Conectar el Hardware:**
   - Conectar el sensor LM35 a la Pico W:
     - **VCC:** VBUS (Pin 40, 5V)
     - **GND:** GND
     - **VOUT:** GP26 (ADC0)

4. **Configurar ThingSpeak:**
   - Crear un canal en ThingSpeak.
   - Configurar el campo `field1` para recibir los datos de temperatura.
   - Anotar la clave API de escritura y lectura del canal.

5. **Configurar MathWorks en ThingSpeak:**
   - Crear un análisis para calcular el promedio de los últimos 10 datos.
   - Configurar una alerta si la temperatura supera los 35°C.

6. **Programación en MicroPython:**
   - Escribir un script en MicroPython para:
     - Conectarse a Wi-Fi.
     - Leer la temperatura en °C usando el LM35.
     - Convertir la señal analógica a temperatura.
     - Enviar los datos a ThingSpeak en `field1` cada 180 segundos.

7. **Verificar Visualización:**
   - Configurar gráficos en ThingSpeak para visualizar los datos en tiempo real.
   - Verificar que las alertas se activen correctamente cuando la temperatura supere el umbral.

## 📊 Panel de Control de ThingSpeak
- **Campo 1:** Lecturas de temperatura en tiempo real.
- **Análisis de MathWorks:**
  - Promedio de las últimas 10 lecturas.
  - Mensaje de alerta si la temperatura supera los 35°C.

# 📝 Análisis de Datos e Informe
- **Tendencias de Temperatura:** Promedio, temperatura mínima y máxima.
- **Alertas:** Notificación al superar el umbral.
- **Informe:** Consulta `docs/informe.pdf` para un análisis detallado.

## 🛡️ Licencia
Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

## 📧 Contacto
Para preguntas o contribuciones, por favor contacta: [luizkt08@gmail.com](mailto:luizvkt08@gmail.com)

---

⭐ Si encontraste este proyecto útil, por favor dale una estrella en [GitHub](https://github.com/yourusername/iot-temperature-monitoring).
