# build environment
FROM node:10-alpine as node
ENV PATH /usr/src/app/node_modules/.bin:$PATH
RUN mkdir /app
WORKDIR /app
RUN npm install -g @angular/cli@7.0.2

FROM nginx:1.13
COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf
