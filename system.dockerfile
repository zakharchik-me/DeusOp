FROM python:3.11-alpine AS system

RUN apk add --no-cache gcc musl-dev libffi-dev

WORKDIR /app

COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .
