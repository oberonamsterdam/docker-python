#!/bin/sh

set -e

if [ "$APPLICATION_PATH" ]; then
  if [ "$FASTAPI_ENV" = 'production' ]; then
    exec uvicorn $APPLICATION_PATH --proxy-headers --host 0.0.0.0 --port 80
  else
    exec uvicorn $APPLICATION_PATH --proxy-headers --host 0.0.0.0 --port 80 --reload
  fi
else
  tail -f /dev/null
fi