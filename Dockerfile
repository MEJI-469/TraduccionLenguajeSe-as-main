# Usa una imagen base de Python (elige la versión que prefieras)
FROM python:3.9-slim

# Actualiza los paquetes y instala libGL (necesario para OpenCV)
RUN apt-get update && apt-get install -y libgl1

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todos los archivos del proyecto al contenedor
COPY . /app

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto donde la app estará corriendo (por defecto en Flask es 5000)
EXPOSE 5000

# Comando para ejecutar la app cuando el contenedor arranque
CMD ["python", "main.py"]
