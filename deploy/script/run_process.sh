#!/bin/bash
docker rm -f $(docker ps -aq)
cd /home/ubuntu/deploy/script
docker-compose up -d --build;
