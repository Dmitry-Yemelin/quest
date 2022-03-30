# syntax=docker/dockerfile:1
FROM node:10
ENV SECRET_WORD=TEST
WORKDIR /apps
COPY package*.json ./
COPY src/* ./src/
COPY bin/* ./bin/
RUN npm install
EXPOSE 3000
CMD [ "node", "src/000.js" ]
