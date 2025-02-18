# syntax=docker/dockerfile:1
FROM node:10
ENV SECRET_WORD=TwelveFactor
WORKDIR /apps
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "node", "src/000.js" ]
