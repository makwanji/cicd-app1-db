#!/bin/bash

# Docker build image
docker build -t cicd-app1-db .

# Docker List images
docker images | grep cicd-app1-db

# Docker Tag images
docker tag cicd-app1-db:latest makwanji/cicd-app1-db:0.0.2
docker tag cicd-app1-db:latest makwanji/cicd-app1-db:latest

# Docker Push images
docker push makwanji/cicd-app1-db:0.0.2
docker push makwanji/cicd-app1-db:latest

# Docker list images
docker images | grep cicd-app1-db

# Docker build container from image
docker run -d --name cicd-app1-db makwanji/cicd-app1-db:latest
docker run -d -p 3306:3306 --name cicd-app1-db -e MYSQL_ROOT_PASSWORD=supersecret makwanji/cicd-app1-db:latest
