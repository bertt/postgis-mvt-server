# postgis-mvt-server
Serve Mapbox vector tiles directly from a PostGIS database

## Docker

### Run with docker-compose

```
$ https://raw.githubusercontent.com/bertt/postgis-mvt-server/lets-dockerize-all-the-things/docker-compose.yml
$ docker-compose up
```

Testcase: 

- go to http://localhost:3001/html/upload.html

- upload zipped GeoJSON file

- Maputnik should show up with vector tiles from uploaded GeoJSON file

## Build docker image

```
$ docker build -t bertt/mvt-server .
```


