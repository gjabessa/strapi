FROM node:latest as build

WORKDIR /usr/local/app

COPY package.json .

COPY . .

RUN npm install 

EXPOSE 80