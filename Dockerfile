FROM alpine:latest

RUN apk add --no-cache nginx && \
    mkdir -p /var/www/html && \
    chown -R nginx:nginx /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf

USER nginx

# Открываем порт 80 внутри контейнера
EXPOSE 80

# Запускаем nginx в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]
