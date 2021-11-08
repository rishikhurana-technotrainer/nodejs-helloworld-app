FROM quay.io/sunaina_bansal/nodejs-technotrainer:8.11-alpine

RUN cat /etc/containers/registries.conf
RUN whoami
WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package*.json /usr/src/app/
RUN npm install
RUN npm install system-sleep

COPY . /usr/src/app

ENV PORT 8080
EXPOSE $PORT
CMD [ "npm", "start" ]
