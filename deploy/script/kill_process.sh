#!/bin/bash
# docker-compose로 컨테이너 종료 및 제거
sudo docker-compose -f /home/ubuntu/deploy/script/docker-compose.yml down

# 종료된 후, 이미지 삭제 (이미지 사용 중인 컨테이너가 없는지 확인)
sudo docker rmi -f pinkcandy02/springproject:latest
