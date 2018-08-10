FROM node:8

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

ADD package.json publish.sh /app/
RUN npm install --unsafe-perm

ADD . /app
