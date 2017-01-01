#!/bin/bash

echo "Stop and remove all docker containers"
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

echo "Build sickrage"
cd docker-sickrage && docker build -t sickrage .

echo "docker-compose up"
docker-compose up
