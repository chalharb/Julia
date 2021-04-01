FROM node:lts-alpine3.12

RUN mkdir -p /home/node/api && chown -R node:node /home/node/api

WORKDIR /home/node/api

COPY package.json package-lock.json ./

USER node

COPY --chown=node:node . .

RUN if [ "$NODE_ENV" = "development" ]; \
	then npm install;  \
	else npm install --only=production; \
	fi

EXPOSE 3000

CMD [ "node", "server.js" ]