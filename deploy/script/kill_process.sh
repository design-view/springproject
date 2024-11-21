#!/bin/bash
# docker-compose로 컨테이너 종료 및 제거
sudo docker-compose -f /home/ubuntu/deploy/script/docker-compose.yml down

# 이미지가 사용 중인 컨테이너 ID 확인
container_id=$(docker ps -a --filter "ancestor=pinkcandy02/springproject:latest" -q)

# 만약 컨테이너가 존재하면 종료 및 삭제
if [ ! -z "$container_id" ]; then
    echo "Stopping and removing container(s) using the image pinkcandy02/springproject:latest..."
    docker stop $container_id   # 컨테이너 종료
    docker rm $container_id     # 컨테이너 삭제
else
    echo "No containers are using the image pinkcandy02/springproject:latest."
fi

# 이미지를 강제로 삭제
echo "Removing the image pinkcandy02/springproject:latest..."
docker rmi -f pinkcandy02/springproject:latest   # 이미지 강제 삭제
