#!/bin/sh

poetry export --without-hashes -f requirements.txt -o /app/requirements.txt
