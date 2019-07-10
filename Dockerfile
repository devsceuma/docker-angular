# build environment
FROM node:10.9-slim
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
RUN npm install -g @angular/cli@7.0.2
