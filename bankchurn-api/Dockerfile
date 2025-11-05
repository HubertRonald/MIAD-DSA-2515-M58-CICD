# Usamos una imagen base ligera de Python 3.12
FROM python:3.12-slim

WORKDIR /app

# Copiamos solo lo que usamos en la imagen
COPY ./app /app/app
COPY ./model-pkg /app/model-pkg
COPY ./requirements.txt /app/requirements.txt
COPY ./start.sh /app/start.sh

# Establecemos el python path
ENV PYTHONPATH=/app

# Instalamos dependencias y damos permisos al script
RUN pip install --upgrade pip \
    && pip install ./model-pkg/model_abandono-0.0.1-py3-none-any.whl \
    && pip install -r requirements.txt \
    && chmod +x /app/start.sh

# Comando provisional para inspeccionar el contenido del contenedor
CMD ["sh", "-c", "ls -R /app && echo 'Starting Uvicorn...' && ./start.sh"]


