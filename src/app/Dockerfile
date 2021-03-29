FROM node:15.12.0-alpine3.10 AS base

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package.json package-lock.json ./

USER node

RUN npm ci

COPY --chown=node:node src ./src
COPY --chown=node:node public ./public

EXPOSE 3000

CMD [ "node", "./src/index.js" ]
