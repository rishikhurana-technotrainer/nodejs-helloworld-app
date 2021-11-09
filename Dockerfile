FROM openshift/nodejs:14-ubi8
#FROM image-registry.openshift-image-registry.svc:5000/openshift/nodejs@sha256:ec762c5913616b93f7e9aeb8e856cf8e45d8daa24cb175695787abd97f3d5555

USER root

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package*.json /usr/src/app/
RUN npm install
RUN npm install system-sleep


COPY . /usr/src/app

ENV PORT 5000
EXPOSE $PORT
CMD [ "npm", "start" ]
