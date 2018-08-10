#!/bin/sh

docker start mysql
sleep 5
docker exec -it mysql mysql -uroot -p
docker stop mysql
