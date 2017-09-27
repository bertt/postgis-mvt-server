FROM node:boron
WORKDIR /usr/src/app
RUN apt-get update && apt-get install gdal-bin -y
COPY package.json mvt_server.js ./
COPY ./config/*.json ./config/
COPY ./html/ ./html/
RUN mkdir sources
RUN npm install
EXPOSE 3001
CMD [ "node", "mvt_server.js" ]