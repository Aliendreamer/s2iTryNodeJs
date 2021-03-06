FROM node:lts-buster

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY . .
EXPOSE 9999
CMD [ "node", "index.js" ]