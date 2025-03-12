# Usa una imagen base de Python
FROM python:3.9-slim

# Actualiza los paquetes y instala libGL y libglib2.0-0
RUN apt-get update && apt-get install -y libgl1 libglib2.0-0

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de tu proyecto
COPY . /app

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto 5000 para Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]

