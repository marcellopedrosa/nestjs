FROM node:16.14.2-alpine3.15

RUN apk add --no-cache bash

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm i -g @nestjs/cli

USER node

WORKDIR /home/node/app