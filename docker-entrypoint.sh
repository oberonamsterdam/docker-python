#!/bin/sh

set -e

if [ "$FASTAPI_ENV" = 'production' ]; then
  exec uvicorn app.main:app --proxy-headers --host 0.0.0.0 --port 80
else
  exec uvicorn app.main:app --proxy-headers --host 0.0.0.0 --port 80 --reload
fi