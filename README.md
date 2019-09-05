# Greenplum gpdb v4.3.10.0 in docker

This creates and runs a demo GPDB cluster in a single docker container.
This is simply for testing purposes and is not for production use.

## Build

> docker build -t gpdb4.

## Run

> docker run -d -p 127.0.0.1:5432:5432 --name gpdb4 gpdb4
 
## Logs

> docker logs -f gpdb4

## Connect

> psql -h localhost -p 5432 -U gpadmin -d template1

### Client tools
> sudo apt-get install postgresql-client
