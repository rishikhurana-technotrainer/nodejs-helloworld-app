FROM quay.io/sunaina_bansal/nodejs-technotrainer:8.11-alpine

#RUN pwd
#RUN whoami

WORKDIR /project

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package*.json /project
RUN npm install
RUN npm install system-sleep

COPY . /project

ENV PORT 8080
EXPOSE $PORT
CMD [ "npm", "start" ]
