FROM node:15.12.0-alpine3.10

WORKDIR /api

COPY package.json ./
COPY package-lock.json ./

RUN npm install

EXPOSE 8000

CMD [ "npm", "run", "dev" ]