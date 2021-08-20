FROM node:current-alpine as build

WORKDIR /usr/local/app

COPY package.json .

COPY . .

RUN export NODE_OPTIONS=--max_old_space_size=16384
RUN npm install 

EXPOSE 80