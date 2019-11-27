FROM nginx:stable-alpine

EXPOSE 8080

WORKDIR /usr/share/nginx/html/project

RUN apk add --no-cache --virtual .build-deps \
    supervisor

COPY . .

COPY ./docker/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/supervisord.conf /etc/supervisor.d/supervisord.ini

CMD /usr/bin/supervisord -n -c /etc/supervisord.conf;
