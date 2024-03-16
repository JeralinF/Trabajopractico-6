FROM python:3.8

WORKDIR /app

# Instalar las dependencias de la aplicación
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copiar la aplicación al contenedor
COPY . .

# Puerto en el que escuchará la aplicación
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]