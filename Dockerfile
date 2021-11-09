FROM openshift/nodejs:14-ubi8

USER root

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package*.json /usr/src/app

RUN npm install


COPY . /usr/src/app

ENV PORT 8080
EXPOSE $PORT
CMD [ "npm", "start" ]
