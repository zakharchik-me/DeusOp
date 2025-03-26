FROM python:3.11-alpine AS builder

RUN apk add --no-cache gcc musl-dev libffi-dev

WORKDIR /app

COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.11-alpine

RUN adduser -D myuser

COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY app/ /app/

RUN ls -la /app

USER myuser

WORKDIR /app

CMD ["python", "main.py"]

