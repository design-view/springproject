#!/bin/bash
sudo docker-compose -f /home/ubuntu/deploy/script/docker-compose.yml down
docker rmi pinkcandy02/springproject:latest
