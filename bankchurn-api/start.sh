#!/bin/bash
# Activar entorno virtual si aplica
# source .venv/bin/activate

if [ -z "$PORT" ]; then
  PORT=8000
fi

echo "Starting app on port $PORT..."
uvicorn app.main:app --host 0.0.0.0 --port $PORT
