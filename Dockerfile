FROM node:boron
WORKDIR /usr/src/app
COPY package.json mvt_server.js ./
COPY ./config/*.json ./config/
COPY ./html/ ./html/
RUN mkdir sources && npm install && apt-get update && apt-get install gdal-bin -y
EXPOSE 3001
CMD [ "node", "mvt_server.js" ]