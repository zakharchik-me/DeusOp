FROM app-system as system

RUN adduser -D myuser

WORKDIR /app

COPY --from=app-system /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages

COPY app/ .

RUN chown -R myuser:myuser /app

USER myuser
