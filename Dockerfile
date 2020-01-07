FROM node:13.5-alpine

WORKDIR /usr/src/app

RUN apk update
RUN npm install express

ENV environment=production

ADD app.js .

EXPOSE 3000

ENTRYPOINT [ "node", "app.js" ]
