# syntax=docker/dockerfile:1
   
FROM node:18-alpine

WORKDIR /app

COPY . .

COPY package*.json ./

RUN npm install 

CMD ["node", "server.js"]

EXPOSE 3000