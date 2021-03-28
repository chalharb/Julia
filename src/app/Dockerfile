FROM node:15.12.0-alpine3.10

WORKDIR /app

COPY package.json ./

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]