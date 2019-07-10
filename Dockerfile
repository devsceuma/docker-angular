FROM node:10.9-slim as node
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
WORKDIR /app

COPY package.json /app/
RUN npm install -g @angular/cli@7.0.2
RUN npm install
COPY ./ /app/
ARG env=prod
RUN npm run build