FROM node:20.5.0-alpine

WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli \
    && apk update \
    && apk add git 

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

