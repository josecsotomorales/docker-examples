FROM node:13.5-alpine

MAINTAINER josecsmorales@gmail.com

ENV environment=production

WORKDIR /usr/src/app

RUN apk update; npm install express

ADD app.js .

EXPOSE 3000

ENTRYPOINT [ "node", "app.js" ]
