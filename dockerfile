FROM node:latest as build

WORKDIR /usr/local/app

COPY package.json .

COPY . .

RUN export NODE_OPTIONS=--max_old_space_size=8192
RUN npm install && npm run build

EXPOSE 80