#!/bin/bash
# Activar entorno virtual si aplica
# source .venv/bin/activate

# Ejecutar la API FastAPI con uvicorn
uvicorn app.main:app --host 0.0.0.0 --port 8000
