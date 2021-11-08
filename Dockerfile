FROM public.ecr.aws/b0r2u1q3/nodejs-technotrainer:8.11-alpine

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
