docker rm -f $(docker ps -aq)

docker network prune
docker volume prune

docker rmi $(docker images | grep dev)
