#!/bin/sh

docker start postgres
sleep 5
docker exec -it postgres psql -U postgres
docker stop postgres
