# postgis-mvt-server
Serve Mapbox vector tiles directly from a PostGIS 2.4 database.

## dependencies

- Postgres 9.6 + PostGIS 2.4 with ST_AsMVT support
- Node.js with OGR installed

## Docker

### Run with docker-compose

```
$ wget https://raw.githubusercontent.com/bertt/postgis-mvt-server/lets-dockerize-all-the-things/docker-compose.yml
$ docker-compose up
```

Testcase: 

- go to http://localhost:3001/html/upload.html

- upload zipped GeoJSON file (can use sample ./testdata/gemeenten2016.zip)

- Maputnik should show up with vector tiles from uploaded GeoJSON file

### Build docker image

```
$ docker build -t bertt/mvt-server .
```

### Docker Improvements

- move CORS code on nginx proxy
- move client side html to nginx webserver image
- use environment vars for database connection + external uri
- temporary json file is really needed?
- security uploads?
- 28992 dependency in code?



