#!/bin/bash
docker run -d -p 3306:3306 --name cicd-app1-db -e MYSQL_ROOT_PASSWORD=supersecret cicd-app1-db
